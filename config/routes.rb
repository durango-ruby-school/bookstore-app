Bookstore::Application.routes.draw do  
  resources :books do
    resources :reviews, only: [:show, :new, :create, :edit, :update, :destroy]
  end
end
