module ApplicationHelper
  def require_sign_in
    redirect_to root_path unless user_signed_in?
  end

  def get_user
    @user = current_user
  end

  def get_categories user = nil
    user ||= @user
    @categories = Category.where(user_id: user)
  end

  def get_words user = nil
    user ||= @user
    @words = Word.where(user_id: user).order(:category_id, :created_at)
  end

  def twitter_icon user_name, size = 'normal'
    "http://furyu.nazo.cc/twicon/#{user_name}/#{size}"
  end
end
