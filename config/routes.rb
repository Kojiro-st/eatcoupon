Rails.application.routes.draw do
  devise_for :customers
  resources :customers, only: [:new, :create, :index]
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  # get 'messages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, only: [:edit, :update, :new]

  devise_scope :user do
    get "sign_in", :to => "users#new"
    get "sign_out", :to => "users#new" 
  end
end
