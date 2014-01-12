class WelcomeController < ApplicationController
  def index


render :layout => false

  end

  def help


  end

  def inscription
  
  render :layout => false

  
  end


  def new 
   
   @author=Author.new
  
   render :layout => false



  end


end
