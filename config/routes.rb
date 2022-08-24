Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "admin/articles#index"
  namespace :admin do
    resources :articles do 
      resources :comments
    end
  end
end
