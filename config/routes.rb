Rails.application.routes.draw do
  devise_for :customers
  resources :customers, only: [:index, :new, :create]
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  # get 'messages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, only: [:edit, :update, :index, :create]

  devise_scope :user do
    get "sign_in", :to => "users#index"
    get "sign_out", :to => "messages#index" 
  end
end
