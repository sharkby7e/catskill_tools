require 'rails_helper'

RSpec.describe 'User adds tools', type: :system do
  it 'allows a user to add a new tool' do
    user = create(:user, :confirmed)
    login_as(user)
    visit root_path

    click_on '+ Add Tool'

    fill_in 'Tool Name', with: 'Impact Driver'
    fill_in 'Tool Brand', with: 'Makita'

    click_on 'Create Tool'

    expect(page).to have_content 'Tool added successfully!'
    expect(page).to have_content 'Impact Drive'
  end

  it 'redirects you to session new if you are not logged in' do
  end
end
