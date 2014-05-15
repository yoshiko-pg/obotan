module ApplicationHelper
  def get_user
    @user = current_user
  end

  def get_category
    @categories = Category.where(user_id: @user.id).limit(10)
    #@categories = Category.find_by_user_id(@user)
  end
end
