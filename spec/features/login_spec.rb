require 'spec_helper'

feature 'sign up' do
	scenario 'correctly' do
		visit signup_path
		fill_in "Username", :with =>"amy"
		fill_in "Email", :with =>"amy@example.com"
		fill_in "Password", :with =>"123"
		fill_in "Password confirmation", :with =>"123"
		click_button "Sign Up"
		expect(page).to have_content 'Logged in as'
	end
end

feature 'login' do
	scenario 'correctly' do
		visit signup_path
		fill_in "Username", :with =>"amy"
		fill_in "Email", :with =>"amy@example.com"
		fill_in "Password", :with =>"123"
		fill_in "Password confirmation", :with =>"123"
		click_button "Sign Up"
		expect(page).to have_content 'Logged in as'

		click_link "Log Out"

		visit login_path
		fill_in "Email", :with =>"amy@example.com"
		fill_in "Password", :with =>"123"
		click_button "Sign In"
		expect(page).to have_content 'Logged in as'
	end
end

feature 'logout' do
	scenario 'correctly' do
		visit signup_path
		fill_in "Username", :with =>"amy"
		fill_in "Email", :with =>"amy@example.com"
		fill_in "Password", :with =>"123"
		fill_in "Password confirmation", :with =>"123"
		click_button "Sign Up"
		expect(page).to have_content 'Logged in as'

		click_link "Log Out"
		find('#user_header').should have_link('Log In')
	end
end
