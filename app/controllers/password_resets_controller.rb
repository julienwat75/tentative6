class PasswordResetsController < ApplicationController
  skip_before_filter :require_login

  # request password   # you get here when the user entered his email in the reset password form and submitted it.
  def create 
    @author = Author.find_by_username(params[:username])

    

    # This line sends an email to the user with instructions on how to reset their password (a url with a random token)
    @author.deliver_reset_password_instructions!    if @author

    #binding.pry

    # Tell the user instructions have been sent whether or not email was found.
    # This is to not leak information to attackers about which emails exist in the system.
    redirect_to(root_path, :notice => 'Instructions have been sent to your email.')
  end

  # This is the reset password form.
  def edit
    @author = Author.load_from_reset_password_token(params[:id])
    @token = params[:id]

    if @author.blank?
      not_authenticated
      return
    end
  end

  # This action fires when the user has sent the reset password form.
  def update
    @token = params[:token]
    @author = Author.load_from_reset_password_token(params[:token])

    if @author.blank?
      not_authenticated
      return
    end

    # the next line makes the password confirmation validation work
    @author.password_confirmation = params[:author][:password_confirmation]
    # the next line clears the temporary token and updates the password
    if @author.change_password!(params[:author][:password])
      redirect_to(root_path, :notice => 'Password was successfully updated.')
    else
      render :action => "edit"
    end
  end
end
