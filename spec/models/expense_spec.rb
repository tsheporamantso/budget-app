require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) { User.create(name: 'User1', email: 'User1@gmail.com', password: 'password123') }
  let(:category) { Category.create(name: 'Test Food') }

  it 'should be valid with correct attributes' do
    expense = Expense.new(
      name: 'Nandos',
      amount: 20,
      author_id: user.id,
      category:
    )
    expect(expense).to be_valid
  end

  it 'should not be valid without the name' do
    expense = Expense.new(
      amount: 20,
      author_id: user.id,
      category:
    )
    expect(expense).to_not be_valid
  end

  it 'should not be valid without the amount' do
    expense = Expense.new(
      name: 'Nandos',
      author_id: user.id,
      category:
    )
    expect(expense).to_not be_valid
  end

  it 'should not be valid without the author_id' do
    expense = Expense.new(
      name: 'Nandos',
      amount: 20,
      category:
    )
    expect(expense).to_not be_valid
  end
end
