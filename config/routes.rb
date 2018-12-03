Rails.application.routes.draw do

  get 'sou-instituicao/cadastro', to: "instituicao#new"
  post 'instituicao/create', to: "instituicao#create", as: "instituicao_create"
  
  
  get 'instituicao/index'
  
  
  resources :equipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"
  get "sobre", to: "about#index"
  get "quem-somos", to: "quemsomos#index"
  get "contato", to: "contato#index"
  get "instituicoes", to: "instituicoes#index"
  
  # get "sou-instituicao/cadastro", to: "sou_instituicao#cadastro"
  get "sou-instituicao/necessidades/:id", to: "instituicao#necessidades", as: "sou_instituicao_necessidades"
  get "sou-instituicao/perfil/:id", to: "instituicao#edit", as: "sou_instituicao_perfil"
  patch "sou-instituicao/perfi/:id", to: "instituicao#update", as: "sou_instituicao_update"
  
  get "sou-instituicao/nova-necessidade/:id", to: "instituicao#formnovanecessidade", as: "sou_instituicao_nova_necessidade"
  post "sou-instituicao/nova-necessidade/:id", to: "instituicao#novanecessidade", as: "sou_instituicao_nova_necessidade_create"
  
  
  get "sou-instituicao", to: "login#login", as: "login"
  post 'auth', to: "login#auth", as: "login_auth"
  get 'logout', to: "login#logout", as: "logout"
  
end
