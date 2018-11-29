class SouInstituicaoController < ApplicationController
    layout "login"
    
    def index
        render "admin/index"
    end
end