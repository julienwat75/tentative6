class PageinvitationsController < ApplicationController

def index

  unless  current_user && current_user.id == 3

   redirect_to "/pages/nondisponible"

  end

#a=1
@user=current_user
 a=params[:id]
@page_suivante=a.to_i+1

calcul=Invitation.all.count.to_f/20
@nombre_pages=calcul.ceil


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  20,
                       :offset      =>  a.to_i*20)     # numero de page qu on souhaite afficher
 

end





def show

    a=params[:id]
    @page_suivante=a.to_i+1
    calcul=Invitation.all.count.to_f/20
    @nombre_pages=calcul.ceil

@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  20,
                       :offset      =>  a.to_i*20)     # a.to_i converti la string en int
 

  end

end
