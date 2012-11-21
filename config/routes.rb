BlogMongoRails3::Application.routes.draw do
 
 mount Ckeditor::Engine => '/ckeditor'
  resources :authors

   
  resources :articles do
    resources :comments
  end

  root :to => "articles#index"

  
end
