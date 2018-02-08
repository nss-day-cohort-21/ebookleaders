Rails.application.routes.draw do

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

  #get 'users/show'


	devise_for :users , controllers: {confirmations: 'confirmations'}
	resources :users
	resources :books do
		resources :reviews
	end	

	get 'homes/show'
resources :pages
match ':controller(/:action(/:id))', :via => :get
# get '/bio' => 'pages#bio'
 get '/show' => 'pages#show'
root 'books#index'


end
