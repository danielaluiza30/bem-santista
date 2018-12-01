class QuemsomosController < ApplicationController
    def index
        @equipes = Equipe.all
        render "application/quemsomos"
    end
end