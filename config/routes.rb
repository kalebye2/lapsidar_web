Rails.application.routes.draw do
  get 'financeiro/index'
  get 'financeiro/atendimento_valor'
  get 'financeiro/recebimento_pessoa'
  get 'financeiro/repasse_profissionais'
  
  scope :financeiro do
    resources :atendimento_valores
    resources :recebimentos
  end

  resources :profissionais do
    member do
      get :acompanhamentos
    end
  end
  resources :pessoa_devolutivas
  resources :crp_regioes
  resources :profissional_notas
  #resources :pessoas
  resources :pessoas, path: '/cadastros' do
    member do
      get :devolutivas, path: 'devolutivas'
      get :responsavel_devolutivas
    end
  end
  resources :paises
  resources :continentes
  resources :acompanhamentos
  resources :atendimentos
  resources :relatos
  resources :pessoa_extra_informacoes

  root to: "application#index"
  get '/financeiro', to: "financeiro#index"

  scope :admin do
  end

  # rotas pdf
  get "/acompanhamentos/:id/detalhes", to: "acompanhamentos#caso_detalhes"
  get "/relatos/:id/pdf", to: "relatos#show_pdf"
  get "/pessoa_extra_informacoes/:id/pdf", to: "pessoa_extra_informacoes#show_pdf"

  # get pdf
  get "/pdf_download", to: "application#pdf_download"
  get "/pdf_preview", to: "application#pdf_preview"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
