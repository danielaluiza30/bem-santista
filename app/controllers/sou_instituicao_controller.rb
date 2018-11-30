class SouInstituicaoController < ApplicationController
    def index
        render "admin/index"
    end
    
    def necessidades
        render "admin/necessidades"
    end
    
    layout :choose_layout
  
    def choose_layout
        if action_name == 'index'
            return 'login'
        else
            return 'instituicao_interna'
        end
    end
end