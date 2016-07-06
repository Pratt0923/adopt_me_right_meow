Rails.application.routes.draw do
  devise_for :users
   resources :cat do
     resources :charges
     collection { post :import }
   end
   root to:  "cat#index"
   resources :email

  # For details on the DSL avaislable within this file, see http://guides.rubyonrails.org/routing.html
end
