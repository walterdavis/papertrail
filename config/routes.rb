Rails.application.routes.draw do
  resources :users
  get 'users/:id/:version', to: 'users#show', as: :user_version
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
end
