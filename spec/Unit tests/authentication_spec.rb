require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  describe 'the login/out process' do
    before :each do
      user = User.create!(name: 'Miguel', email: 'mricanho@gmail.com', password: 'password1234')
      Article.create!(author: user, title: 'A title', text: 'Some text')
      Category.create(id:1, name: 'Fashion', priority: 1)
      Category.create(id:2, name: 'Technology', priority: 2)
      Category.create(id:3, name: 'Food', priority: 3)
      Category.create(id:4, name: 'Energy', priority: 4)
      visit new_user_session_path
      fill_in 'user_email', with: 'mricanho@gmail.com'
      fill_in 'user_password', with: 'password1234'
      click_button 'commit'
    end

    it 'signs me in' do
      expect(page).to have_content 'Signed in successfully'
    end

    it 'signs me out' do
      click_link('Logout')
      expect(page).to have_content 'Signed out successfully'
    end
  end
end
