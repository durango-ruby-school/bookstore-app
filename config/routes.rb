Bookstore::Application.routes.draw do
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
end
