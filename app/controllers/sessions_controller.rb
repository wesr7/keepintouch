class SessionsController < ApplicationController
  def new
  end

  def create
      begin
        @user = User.find_by_email(params[:email])
        session[:user_id] = @user.id if @user && @user.authenticate(params[:password])
        redirect_to '/' if !@user.authenticate(params[:password])
        redirect_to '/nighty' if @user.authenticate(params[:password])
      end
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
  end


  def destroy
     if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path
   end
end
