require 'rails_helper'

feature 'user registers an account' do 
	scenario 'successfully' do
		visit '/users/sign_up'

		fill_in 'Username', :with => 'Username'
		fill_in	'Email', :with => 'persson@email.com'
		fill_in 'Password', :with => 'password'
		fill_in 'Password Confirm', :with => 'password'

		click_button 'Sign_up'

		expect(page).to have_content('Welcome you have signed up successfully')
		

	end

end