Rails.application.routes.draw do

	devise_for :users , controllers: {confirmations: 'confirmations'}
	resources :books do
		resources :reviews
	end	
resources :pages
match ':controller(/:action(/:id))', :via => :get
# get '/bio' => 'pages#bio'
# get '/show' => 'pages#show'
root 'books#index'

end
