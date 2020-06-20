require 'rails_helper'

RSpec.describe 'users', type: :feature do

  describe 'user signs up' do
    it 'allows users to sign up' do
      visit '/users/sign_up'

      fill_in 'Email', with: 'test@test.com'
      fill_in 'Password', with: 'all1needislove'
      fill_in 'Password confirmation', with: 'all1needislove'

      click_button 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
    end

    it 'does not allow signup when email is taken' do
      User.create!(email: 'me@home.com', password: 'watching the telly')

      visit '/users/sign_up'

      fill_in 'Email', with: 'ME@home.com'
      fill_in 'Password', with: 'all1needislove'
      fill_in 'Password confirmation', with: 'all1needislove'

      click_button 'Sign up'

      expect(page).to have_content('Email has already been taken')
    end

  end

  describe 'user logs in' do
    it 'allows an existing user to sign in' do
      User.create!(email: 'me@home.com', password: 'watching the telly')

      visit '/users/sign_in'

      fill_in 'Email', with: 'me@home.com'
      fill_in 'Password', with: 'watching the telly'

      click_button 'Log in'

      expect(page).to have_content('Signed in successfully.')
    end

    it 'disallows login when using a wrong password' do
      User.create!(email: 'me@home.com', password: 'watching the telly')

      visit '/users/sign_in'

      fill_in 'Email', with: 'me@home.com'
      fill_in 'Password', with: 'wrong password'

      click_button 'Log in'

      expect(page).to have_content('Invalid Email or password.')
    end
  end

end
