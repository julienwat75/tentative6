class PageinvitationsController < ApplicationController

def index

a=0


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  4,
                       :offset      =>  a*2)     # numero de page qu on souhaite afficher
 4

end





def show

    a=params[:id]


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "dateinvitation",
                      :limit      =>  4,
                       :offset      =>  a.to_i*4)     # a.to_i converti la string en int
 

  end

end
