Bucketlist::Application.routes.draw do

  root :to => 'todo_items#index'  
  resources :comments 
  resources :todo_items
  resources :destinations

end
