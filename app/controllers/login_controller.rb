class LoginController < ApplicationController
  def login
  end

  def logout
  end

  def auth
    @parametros = login_params
    @instituicao = Instituicao.find_by(cnpj: @parametros[:cnpj])
    if(@instituicao && @instituicao.authenticate(@parametros[:password]))
      log_in @instituicao
      redirect_to sou_instituicao_necessidades_path(@instituicao)
    else
      redirect_to login_path
    end
  end
  
  private
    def login_params
      params.require(:login).permit(:cnpj, :password)
    end
end
