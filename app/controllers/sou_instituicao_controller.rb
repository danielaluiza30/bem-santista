class SouInstituicaoController < ApplicationController
    def index
        render "admin/index"
    end
    
    def cadastro
        render "admin/cadastro"
    end
    
    def necessidades
        render "admin/necessidades"
    end
    
    def novanecessidade
        render "admin/novanecessidade"
    end
    
    def perfil
        render "admin/perfil"
    end
    
    layout :choose_layout
  
    def choose_layout
        if action_name == 'index' || action_name == 'cadastro'
            return 'login'
        else
            return 'instituicao_interna'
        end
    end
end