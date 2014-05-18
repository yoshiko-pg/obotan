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
    @words = Word.where(user_id: user)
  end

  def twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key       = ENV['TWITTER_API_KEY']
      config.consumer_secret    = ENV['TWITTER_SECRET_KEY']
      config.access_token        = session['oauth_token']
      config.access_token_secret = session['oauth_secret']
    end
  end

  def twitter_icon user_name, size = 'normal'
    "http://furyu.nazo.cc/twicon/#{user_name}/#{size}"
  end
end
