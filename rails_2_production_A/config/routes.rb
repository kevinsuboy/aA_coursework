Rails.application.routes.draw do
  resource :session, only:[:new,:create,:destroy]
  resources :users, only: [:new,:create]
  resources :poems, only: [:create,:index,:new,:edit,:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
