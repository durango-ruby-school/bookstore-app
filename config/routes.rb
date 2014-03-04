Bookstore::Application.routes.draw do
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  get '/books/:id' => 'books#show'
  get '/books/:id/edit' => 'books#edit'
  post '/books' => 'books#create'
  put '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'
end
