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

  def twitter_icon user_name, size = 'normal'
    "http://furyu.nazo.cc/twicon/#{user_name}/#{size}"
  end
end
