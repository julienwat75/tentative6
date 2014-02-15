class AuthorSessionsController < ApplicationController

 def new


  end

  def create
   if login(params[:username], params[:password])

       flash[:success] = "Welcome to billetgratuit.com "

       

      redirect_back_or_to(author_path(current_user.id))  
    else
      flash.now.alert = "Login failed."
      redirect_to "/welcome"
    end
  end

  def destroy

   

    logout
    redirect_to "/welcome"
   
  end


end
