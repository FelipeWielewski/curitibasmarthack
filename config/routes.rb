Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/', to: 'home#index', as: :index
  get '/help', to: 'home#help'
  get '/info', to: 'home#info'
  get '/next_bus', to: 'home#next_bus'
  get '/repair', to: 'home#repair'
end
