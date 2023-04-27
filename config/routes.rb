Rails.application.routes.draw do
  resources :profissional_funcoes
  resources :profissionais
  scope :admin do
    devise_for :psicologos
  end
  root to: "application#index"

  resources :responsavel_usuarios
  resources :parentescos
  resources :psicologos
  resources :usuarios
  resources :crp_regiaos
  resources :municipios
  resources :civil_estados
  resources :instrucao_graus
  resources :ufs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
