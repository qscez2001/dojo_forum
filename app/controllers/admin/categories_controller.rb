class Admin::CategoriesController < Admin::BaseController
  
  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to admin_categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.posts.present?
      flash[:alert] = "The category has been used"
    else
      @category.destroy
    end
    redirect_to admin_categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
