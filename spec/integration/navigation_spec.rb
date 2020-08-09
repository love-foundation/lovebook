require 'rails_helper'

RSpec.describe 'navigation', type: :feature do
  describe 'navigation state change based on logged in state of users' do

    it 'shows menu items after logging in' do
      User.create!(email: 'me@home.com', password: 'watching the telly')

      visit '/'

      expect(page).not_to have_content('Home')

      fill_in 'Email', with: 'me@home.com'
      fill_in 'Password', with: 'watching the telly'

      click_button 'Log in'

      expect(page).to have_content('Home')
    end

    it 'does not show menu items after logging out' do

      User.create!(email: 'me@home.com', password: 'watching the telly')

      visit '/'

      fill_in 'Email', with: 'me@home.com'
      fill_in 'Password', with: 'watching the telly'

      click_button 'Log in'

      expect(page).to have_content('Home')

      click_link 'Logout'

      visit '/'

      expect(page).not_to have_content('Home')
    end
  end
end
