Bookstore::Application.routes.draw do  
  resources :books do
    resources :reviews, only: [:show, :new, :create]
  end
end
