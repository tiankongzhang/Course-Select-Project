class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(email: login_params[:email].downcase)
    if user && user.authenticate(login_params[:password])
      if captcha_valid? params[:captcha]
          
         log_in user
         params[:session][:remember_me] == '1' ? remember_user(user) : forget_user(user)
         flash= {:info => "欢迎回来: #{user.name} :)"}
      else
         flash= {:danger => '验证码错误'}
      end
    else
      flash= {:danger => '账号或密码错误'}
    end
    redirect_to root_url, :flash => flash
  end

  def new

  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private
  def login_params
    params.require(:session).permit(:email, :password)
  end
end
