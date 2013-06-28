Bucketlist::Application.routes.draw do

  root :to => 'todo_items#index'  
  resources :comments 
  resources :todo_items, :only => [:show, :index, :create] do
    member do
        post 'like'
    end
  end
  # you can nest the todoitems
  resources :destinations, :only => [:create, :index]

end
