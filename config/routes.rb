Rails.application.routes.draw do

  get 'sou-instituicao/cadastro', to: "instituicao#new"
  post 'instituicao/create', to: "instituicao#create", as: "instituicao_create"
  get 'instituicao/edit'
  get 'instituicao/update'
  get 'instituicao/index'
  
  
  resources :equipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  get "sobre", to: "about#index"
  get "quem-somos", to: "quemsomos#index"
  get "contato", to: "contato#index"
  get "instituicoes", to: "instituicoes#index"
  
  get "sou-instituicao", to: "sou_instituicao#index"
  # get "sou-instituicao/cadastro", to: "sou_instituicao#cadastro"
  get "sou-instituicao/necessidades", to: "sou_instituicao#necessidades"
  get "sou-instituicao/perfil", to: "sou_instituicao#perfil"
  get "sou-instituicao/nova-necessidade", to: "sou_instituicao#novanecessidade"
  
  get 'login', to: "login#login", as: "login"
  get 'logout', to: "login#logout", as: "logout"
  post 'auth', to: "login#auth", as: "login_auth"
  
end
