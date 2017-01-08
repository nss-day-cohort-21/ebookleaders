Rails.application.routes.draw do

<<<<<<< HEAD
	devise_for :users , controllers: { confirmations: 'confirmations' }
=======
	devise_for :users
>>>>>>> 18a7666091325a4cfa0a27d4f82397656a6f67ae
	resources :books do
		resources :reviews
	end	
root 'books#index'

end
