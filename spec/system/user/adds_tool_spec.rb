require 'rails_helper'

RSpec.describe 'User adds tools', type: :system do
  it 'allows a user to add a new tool' do
    user = create(:user, :confirmed)

    login_as(user)
    visit new_tool_path

    fill_in :name, with: 'Impact Driver'
    fill_in :tool_brand_name, with: 'Makita'

    click_on 'Create Tool'

    expect(page).to have_content 'Tool was successfully created!'
  end

  it 'redirects you to session new if you are not logged in' do
  end
end
