Rails.application.routes.draw do
  root "posts#index"

  get 'user/:id', to: 'users#show', as: 'user'
  get '/posts/:id', to: 'posts#show', as: 'post'
end
