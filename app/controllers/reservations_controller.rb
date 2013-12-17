class ReservationsController < ApplicationController

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
 @reservations = Reservation.new(reservation_params)
 
  @reservations.nombreinvitations=params[:reservation][:nombreinvitations] 
  @reservations.titre=params[:titre]   # ici on recupere directement le champ du form ds l'id car ce n est pas un f.text_field 
  @reservations.dateinvitation=params[:dateinvitation]   
  @reservations.author_id =current_user.id
  @reservations.save   #on sauvegarde
   redirect_to reservations_path   

	end

	def reservation_params
    params.require(:reservation).permit(:nombreinvitations)
  end





	

end
