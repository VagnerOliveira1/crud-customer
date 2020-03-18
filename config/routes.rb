Rails.application.routes.draw do
  devise_for :users
      root to:'customers#index'
      get '/customers/history', to: 'customers#history', as: :customers_history
  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
