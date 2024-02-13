class CategoriesController < ApplicationController
  before_action :set_user
  
  def index
    @categories = Category.all
  end


  private

  def set_user
    @user = User.find(params[:id])
  end
  
end
