require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'Tshepo', email: 'tgramantso@gmail.com', password: 'password123')
  end

  it 'is valid with correct attributes' do
    expect(@user).to be_valid
  end

  it 'should not be valid without the name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'should not be valid without the email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end
end
