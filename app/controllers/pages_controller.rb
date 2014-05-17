class PagesController < ApplicationController
  def index
    if get_user
      @categories = Category.where(user_id: @user)
      @words = Word.where(user_id: @user)
      render 'pages/user_index'
    end
  end

  def mypage
    @this_user = User.find_by_user_name(params[:user_name])
    redirect_to root_path if @this_user.blank?

    get_user
    get_categories @this_user
    get_words @this_user
    @words.reverse_order!
  end
end
