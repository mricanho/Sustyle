require 'rails_helper'

RSpec.describe 'sign in process', type: :feature do
  before(:each) do
    user = User.create!(name: 'Miguel', email: 'mricanho@gmail.com', password: 'password1234')
    Article.create!(author: user, title: 'A title', text: 'Some text')
    Category.create(id: 1, name: 'Fashion', priority: 1)
    Category.create(id: 2, name: 'Technology', priority: 2)
    Category.create(id: 3, name: 'Food', priority: 3)
    Category.create(id: 4, name: 'Energy', priority: 4)
  end

  it 'raise error if wrong password' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: 'user@email.com'
      fill_in 'Password', with: ''
    end
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'raise error if wrong email' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: ''
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'raise error if fields empty' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
    end
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'response 200 when visits page' do
    visit '/users/sign_in'
    expect(page.status_code).to be(200)
  end
end
