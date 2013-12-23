class ReservationsController < ApplicationController

	before_filter :zero_authors_or_authenticated, except: [:index]	



def zero_authors_or_authenticated
  unless Invitation.count == 0 || current_user
    redirect_to login_path
    return false
  end
end


def index

	@reservations=Reservation.all

end

def new

	@reservation=Reservation.new
	
    @author=current_user


	end

	def show

	


	@reservation=Reservation.new
	
    @author=current_user

    @invitation=Invitation.find(params[:id])
    
    
	end

	def create 

		#render text: params[:reservation].inspects
         #params[:reservation].inspects

		#binding.pry 
       #raise params.inspect 

  #@reservations = Reservation.new(params[:reservation])
  code1=Invitation.aleatoire
  
 @reservations = Reservation.new(reservation_params)
 
  @reservations.nombreinvitations=params[:reservation][:nombreinvitations] 
  @reservations.titre=params[:titre]   # ici on recupere directement le champ du form ds l'id car ce n est pas un f.text_field 
  @reservations.dateinvitation=params[:dateinvitation]   
  @reservations.author_id =current_user.id
  @reservations.author_nom =current_user.username
  @reservations.author_prenom =current_user.prenom
  @reservations.code=code1
  @reservations.save   #on sauvegarde
   redirect_to reservations_path   

	end

	def reservation_params
    params.require(:reservation).permit(:nombreinvitations)
  end





	

end
