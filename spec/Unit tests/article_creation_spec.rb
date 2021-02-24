# rubocop: disable Metrics/BlockLength
require 'rails_helper'

RSpec.feature 'Article-creation', type: :feature do
  describe 'sign in and enters article new page' do
    before :each do
      user = User.create!(name: 'Miguel', email: 'mricanho@gmail.com', password: 'password1234')
      Article.create!(author: user, title: 'A title', text: 'Some text')
      Category.create(id: 1, name: 'Fashion', priority: 1)
      Category.create(id: 2, name: 'Technology', priority: 2)
      Category.create(id: 3, name: 'Food', priority: 3)
      Category.create(id: 4, name: 'Energy', priority: 4)
    end

    let :login do
      visit new_user_session_path
      fill_in 'user_email', with: 'mricanho@gmail.com'
      fill_in 'user_password', with: 'password1234'
      click_button 'commit'
    end

    context 'Write an article' do
      it 'Renders a template to write an article' do
        login
        visit root_path

        first('a', text: 'Write an article').click

        expect(page).to have_content(/Create a New Article/i)
      end

      it 'does not allows a new article when logged out' do
        login
        visit root_path
        first('a', text: 'Logout').click
        visit 'articles/new'
        expect(page).to have_content 'You need to sign in or sign up before continuing'
      end
    end
  end
end
# rubocop: enable Metrics/BlockLength
