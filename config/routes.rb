Bucketlist::Application.routes.draw do

    root :to => 'todo_items#index'  
  resources :comments, :only => :create
  resources :todo_items, :only => [:index, :show]

end
