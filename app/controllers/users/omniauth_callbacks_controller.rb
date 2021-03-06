class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.find_or_create_by(user_params)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
      @user.update(
        oauth_token: request.env["omniauth.auth"]['credentials']['token'],
        oauth_secret: request.env["omniauth.auth"]['credentials']['secret']
      )
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  private
  def user_params
    env = request.env["omniauth.auth"]
    env.slice(:provider, :uid).to_h.merge({user_name: env['info']['nickname']})
  end
end
