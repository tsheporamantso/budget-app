class CategoriesController < ApplicationController
  before_action :set_user
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = @user.categories.new(category_params)

    if @category.save
      
      redirect_to user_categories_path(@user)
      flash[:notice] = 'Category created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
  
end
