class InstituicaoController < ApplicationController
    # include LoginHelper  
    # before_action :logged_in_user, only: [:edit, :update, :show]
    # before_action :correct_user,   only: [:edit, :update]

    def necessidades
        @instituicao = Instituicao.find(params[:id])
        render "admin/necessidades"
    end
    
    
    def new
        @instituicao = Instituicao.new
    end
    
    def create
        @instituicao = Instituicao.new(instituicao_params)
        if @instituicao.save 
            flash[:success] = "instituicao cadastrado com sucesso."
            redirect_to sou_instituicao_path(@instituicao)
        else
            redirect_to sou_instituicao_cadastro_path
        end
    end
    
    def edit
        @instituicao = Instituicao.find(params[:id])
        render "admin/perfil" 
    end
    
    
    def update
        @instituicao = Instituicao.find(params[:id])
        if @instituicao.update(instituicao_params)
            flash[:success] = "Usuario editado com sucesso."
            redirect_to sou_instituicao_perfil_path(@instituicao)
        else
            redirect_to sou_instituicao_perfil_path(@instituicao)
        end
    end
    
    layout :choose_layout
  
    def choose_layout
        if action_name == 'new'
            return 'login'
        else
            return 'instituicao_interna'
        end
    end
    
    private
        def instituicao_params
            params.require(:instituicao).permit(:nome_fantasia, :razao_social, :cnpj, :email, :password, :cep, :rua, :numero, :bairro, :tel)
        end
    
        def logged_in_user
            unless logged_in?
                flash[:danger] = "Por favor faça o login "
                redirect_to login_path
            end
        end

        def correct_user
            @instituicao = Instituicao.find(params[:id])
            redirect_to(root_url) unless @instituicao == current_user
        end
end