class PageinvitationsController < ApplicationController

def index

#a=1
@user=current_user
 a=params[:id]
@page_suivante=a.to_i+1

calcul=Invitation.all.count.to_f/25
@nombre_pages=calcul.ceil


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  25,
                       :offset      =>  a.to_i*25)     # numero de page qu on souhaite afficher
 

end





def show

    a=params[:id]
    @page_suivante=a.to_i+1
    calcul=Invitation.all.count.to_f/25
    @nombre_pages=calcul.ceil

@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  25,
                       :offset      =>  a.to_i*25)     # a.to_i converti la string en int
 

  end

end
