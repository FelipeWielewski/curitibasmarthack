Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'home#index', as: :index
  get '/help', to: 'home#help'
  get '/info', to: 'home#info'
  get '/next_bus', to: 'home#next_bus'
  get '/repair', to: 'home#repair'
  get '/informacoes', to: 'home#list_bus', as: :list_bus
  get '/repair/confirmacao/:problem', to: 'home#repair_confirmation', as: :repair_confirmation
  get '/sucesso/:text', to: 'home#sucesso', as: :sucesso
end
