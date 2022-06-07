Rails.application.routes.draw do
  root "posts#index"

  get '/posts/:id', to: 'posts#show', as: 'post'

end
