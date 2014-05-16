class PagesController < ApplicationController
  def index
    if get_user
      @categories = Category.where(user_id: @user)
      @words = Word.where(user_id: @user)
      render 'pages/user_index'
    end
  end

  def mypage
    redirect_to root_path unless User.find_by_user_name(params[:user_name])

    if user_signed_in?
      get_user
      get_categories
      get_words
    end

    # 自分のページ
    if @user.user_name == params[:user_name]
    else
    end
  end
end
