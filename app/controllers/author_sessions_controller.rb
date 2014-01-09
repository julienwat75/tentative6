class AuthorSessionsController < ApplicationController

 def new
  end

  def create
   if login(params[:username], params[:password])

       flash[:success] = "Welcome to the Sample App!"

      redirect_back_or_to(pageinvitations_path)  
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to "/welcome/index"
   
  end


end
