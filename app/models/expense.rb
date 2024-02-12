class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :categories_expenses, dependent: :destroy
  has_many :categories, through: :categories_expenses

  validates :name, presence: true
  validates :author_id, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
