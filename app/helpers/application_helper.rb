module ApplicationHelper
  def get_user
    @user = current_user
  end

  def get_categories
    @categories = Category.where(user_id: @user)
  end

  def get_words
    @words = Word.where(user_id: @user).order(:category_id, :created_at)
  end
end
