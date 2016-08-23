Rails.application.routes.draw do
  get 'posts/index'
  root 'posts#index'

  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/posts/:id' => 'posts#show', as: 'post'

end
