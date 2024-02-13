class ExpensesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @category = Category.find(params[:category_id])
    @expenses = @user.expenses.includes(:category).where(category: @category)
  end
end
