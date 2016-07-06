Rails.application.routes.draw do
  devise_for :users
   resources :cat do
     resources :charges
     collection { post :import }
   end
   root to:  "cat#index"
   resources :email

   get '/contactus' => 'contactus#index'
   get '/aboutus'   => 'aboutus#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
