class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

  end

  def new
    @category = Category.new
  end

  def create
    @category = self.new
    @category.name = params[:category][:name]
    @category.save
    redirect_to category_path(@category.id)
  end

  def edit
    @category = Category.find(params[:id])
  end


  def update
    @category = Category.find(params[:id])
    @category.update(name: params[:category][:name])
    redirect_to category_path(@category.id)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
