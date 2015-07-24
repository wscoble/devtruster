class SessionsController < ApplicationController  

  def new
    redirect_to '/auth/github'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, :notice => I18n.t("signed_in")
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => I18n.t("signed_out")
  end

  def failure
    redirect_to root_url, :alert => I18n.t("auth_error") << " #{params[:message].humanize}"
  end

end
