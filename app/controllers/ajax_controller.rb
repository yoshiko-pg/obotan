class AjaxController < ApplicationController
  before_action :get_user
  before_action :get_edit_word
  
  def check
    @result = (@word.word == params[:word]) ? true : false
    if @result
      @word.update(remember_count: 1)
    end
    render 'ajax/check.js.erb'
  end

  def forget
    @word.update(remember_count: nil)
    render 'ajax/forget.js.erb'
  end

  def hint
    @hint = @word[:word].split('').map{|c| rand(3).zero? ? c : '*' }.join('')
    render 'ajax/hint.js.erb'
  end

  def tweet
    category_name = Category.where(user_id: current_user.id).find(@word.category_id).name
    @str = <<EOL
OBOTANで単語を覚えました。#obotan
カテゴリ：#{category_name}
単語：#{@word.word}
意味：#{@word.mean}
http://obotan.herokuapp.com/#{@user.user_name}
EOL
    twitter_client.update(@str)
    render 'ajax/tweet.js.erb'
  end

  private
    def get_edit_word
      @word = Word.where(user_id: current_user.id).find_by_id(params[:id])
      redirect_to root_path if @word.blank?
    end
end
