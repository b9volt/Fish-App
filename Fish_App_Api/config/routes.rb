Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/api/user/login', to: 'user#login'
  post '/api/user/logoff', to: 'user#logoff'
  # resources :trips
  resources :users, only: [:create] do
    resources :trips, only: [:create, :index, :show, :update, :destroy]
  end
end
# localhost:3000/api/user/1/trips
