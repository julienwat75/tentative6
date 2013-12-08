class WebmastersController < ApplicationController

def index

a=0


@invitations2=Invitation.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  4,
                       :offset      =>  a*4)     # numero de page qu on souhaite afficher
 


end



end
