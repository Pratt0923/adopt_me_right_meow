Rails.application.routes.draw do
  devise_for :users
   resources :cats do
     resources :charges
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
