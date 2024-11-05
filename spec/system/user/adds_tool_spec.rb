require 'rails_helper'

RSpec.describe '', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it 'allows a user to add a new tool' do
    visit new_tool_path

    fill_in 'Name', with: 'Impact Driver'
    fill_in :tool_brand_name, with: 'Makita'

    click_on 'Create Tool'

    expect(page).to have_content 'Tool was successfully created!'
  end

  it 'redirects you to session new if you are not logged in' do
  end
end
