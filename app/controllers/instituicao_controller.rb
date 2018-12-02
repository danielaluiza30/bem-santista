class InstituicaoController < ApplicationController

    
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
end