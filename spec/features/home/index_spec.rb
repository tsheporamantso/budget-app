require 'rails_helper'

RSpec.describe 'Home Page index view', type: :feature do
  scenario 'visitor sees the login/signup links' do
    visit root_path

    expect(page).to have_link('LOGIN', href: new_user_session_path)
    expect(page).to have_link('SIGN UP', href: new_user_registration_path)
  end
end
