class UsersController < ApplicationController
  before_action :get_user
  before_action :get_categories
  before_action :get_words

  def my_words
    # 自分のページ
    if @user.user_name == params[:user_name]
    else
    end

    render 'users/my_words'
  end
end
