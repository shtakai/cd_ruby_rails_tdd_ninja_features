require 'rails_helper'

RSpec.describe 'Ninja', type: :feature do
  scenario 'create ninja failed wo/ninja_name' do
    visit '/'
    fill_in 'Ninja Description', with: Faker::Hacker.say_something_smart
    click_on 'Create Ninja'
    expect(page).to have_content 'Name is required'
    expect(page).to have_content 'Sorry, failed to submit form'
  end

  scenario 'create ninja failed wo/ninja_description' do
    visit '/'
    fill_in 'Ninja Name', with: Faker::Name.name
    click_on 'Create Ninja'
    expect(page).to have_content 'Description is required'
    expect(page).to have_content 'Sorry, failed to submit form'
  end

  scenario 'create ninja successful' do
    visit '/'
    fill_in 'Ninja Name', with: Faker::Name.name
    fill_in 'Ninja Description', with: Faker::Hacker.say_something_smart
    click_on 'Create Ninja'
    expect(page).to have_content 'Form submitted successfully'

  end
end
