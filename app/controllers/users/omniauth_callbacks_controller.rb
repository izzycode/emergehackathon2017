class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  def instagram
    p "<>"*40
    p "THE ONE"
    p params[:code]
    p"**"*47
    url_builder = "https://api.instagram.com/oauth/access_token/"
    url_builder += "client_id=#{ENV['INSTAGRAM_ID']}&"
    url_builder += "client_secret=#{ENV['INSTAGRAM_SECRET']}&"
    url_builder += "grant_type=authorization_code&"
    url_builder += "redirect_uri=#{ENV['INSTAGRAM_AUTHORIZATION_REDIRECT_URI']}&"
    url_builder += "code=#{params[:code]}"
    response = HTTParty.post url_builder
    p url_builder
    p response
    p "<>"*40
    redirect_to root_path
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  def passthru

  end

  # GET|POST /users/auth/twitter/callback
  def failure
    super
  end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
