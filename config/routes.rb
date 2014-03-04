Bookstore::Application.routes.draw do
  get '/books' => 'books#index'
  get '/books/new' => 'books#new'
  get '/books/:id' => 'books#show'
  post '/books' => 'books#create'
end
