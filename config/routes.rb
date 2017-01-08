Rails.application.routes.draw do

	devise_for :users , controllers: { confirmations: 'confirmations' }
	resources :books do
		resources :reviews
	end	
root 'books#index'

end
