class CategoriesController < ApplicationController
  before_action :require_sign_in
  before_action :get_user
  before_action :set_category, only: [:edit, :update, :destroy]

  def new
    @category = @user.categories.new
  end

  def edit
  end

  def create
    @category = @user.categories.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_url, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to categories_url, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      get_categories
      @category = @categories.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:user_id, :name)
    end
end
