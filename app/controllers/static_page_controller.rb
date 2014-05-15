class StaticPageController < ApplicationController
  def index
    if user_signed_in?
      @user = current_user
      @categories = Category.where(user_id: @user)
      @words = Word.where(user_id: @user)
    end
  end
end
