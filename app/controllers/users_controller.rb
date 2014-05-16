class UsersController < ApplicationController
  before_action :get_user
  before_action :get_categories
  before_action :get_words

  def mypage
    redirect_to root_path unless User.find_by_user_name(params[:user_name])

    # 自分のページ
    if @user.user_name == params[:user_name]
    else
    end
  end
end
