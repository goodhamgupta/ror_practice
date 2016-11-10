class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      # .now ensures the flash message disappears once the page refreshes
      flash.now[:danger] = "Invalid email/password combination entered"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    flash[:message] = "You've logged out successfully!"
    redirect_to root_url
  end
end
