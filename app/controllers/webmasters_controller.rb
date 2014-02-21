class WebmastersController < ApplicationController

def index

   
a=0


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  50,
                       :offset      =>  a*50)     # numero de page qu on souhaite afficher
 


end

def show


@invitation=Invitation.find(params[:id])


end 


def destroy
    @invitation.destroy
    respond_to do |format|
      format.html { redirect_to webmasters_url }
      format.json { head :no_content }
    end
  end





end
