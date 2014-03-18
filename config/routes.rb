Bookstore::Application.routes.draw do  
  resources :books do
    resources :reviews, except: [:index]
  end
end
