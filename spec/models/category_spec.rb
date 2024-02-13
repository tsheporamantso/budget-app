require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Tshepo', email: 'tgramantso@gmail.com', password: 'password123') }

  it 'should be valid with correct attributes' do
    category = Category.new(
      name: 'Nandos',
      icon: 'chicken.jpg',
      user: 
    )
    expect(category).to be_valid
  end

  it 'should not be valid without the name' do
    category = Category.new(
      icon: 'chicken.jpg',
      user: 
    )
    expect(category).to_not be_valid
  end

  it 'should not be valid without the name' do
    category = Category.new(
      name: 'Nandos',
      user: 
    )
    expect(category).to_not be_valid
  end
end
