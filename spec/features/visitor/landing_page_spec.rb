require 'rails_helper'

feature 'Landing page' do
  scenario 'Visitor can observe landing page' do
    visit root_path
    expect(page).to have_content('Hello world')
  end
end
