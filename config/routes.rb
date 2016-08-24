Rails.application.routes.draw do
  get 'posts/index'
  root 'posts#index'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  get '/posts/:post_id/comments' => 'comments#new', as: 'post_comments'
  post '/posts/:post_id/comments' => 'comments#create'
  get '/posts/new' => 'posts#new', as: 'new_post'
  get '/posts/:id' => 'posts#show', as: 'post'
  post '/posts' => 'posts#create', as: 'posts'
  patch '/posts/:id' => 'posts#update'
  delete '/posts/:id' => 'posts#destroy', as: 'delete_post'
end
