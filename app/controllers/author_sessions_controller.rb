class AuthorSessionsController < ApplicationController

 def new
  end

  def create
   if login(params[:username], params[:password])
     
      redirect_back_or_to(pageinvitations_path)

    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:authors, message: 'Logged out!')
  end


end
