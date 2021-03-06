class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	# protect_from_forgery with: :null_session
	def github
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    byebug
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end