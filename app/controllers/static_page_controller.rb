class StaticPageController < ApplicationController
  def index
    if get_user
      @categories = Category.where(user_id: @user)
      @words = Word.where(user_id: @user)
    end
  end
end
