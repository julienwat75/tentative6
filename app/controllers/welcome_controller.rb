class WelcomeController < ApplicationController
  def index

 
 #render :layout => true

  end

  def help


  end

  def inscription
  
  render :layout => false

  
  end


  def new 
   @authors=@author
   @author=Author.new
  
   render :layout => false



  end


end
