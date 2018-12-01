Rails.application.routes.draw do
  # resources :equipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  get "sobre", to: "about#index"
  get "quem-somos", to: "quemsomos#index"
  get "contato", to: "contato#index"
  get "instituicoes", to: "instituicoes#index"
  
  get "sou-instituicao", to: "sou_instituicao#index"
  get "sou-instituicao/cadastro", to: "sou_instituicao#cadastro"
  get "sou-instituicao/necessidades", to: "sou_instituicao#necessidades"
  get "sou-instituicao/perfil", to: "sou_instituicao#perfil"
  get "sou-instituicao/nova-necessidade", to: "sou_instituicao#novanecessidade"
end
