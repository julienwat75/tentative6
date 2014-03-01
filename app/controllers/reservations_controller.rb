class ReservationsController < ApplicationController

	before_filter :zero_authors_or_authenticated, except: [:index]	



def zero_authors_or_authenticated
  unless Invitation.count == 0 || current_user
    redirect_to new_author_path
    #redirect_to login_path
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

     @multidate=@invitation.multidates

     @multidate = @multidate.order(:datex)

    
    
    
	end

	def create 

    #render text: params[:reservation].inspects
         #params[:reservation].inspects

    #binding.pry 
    #raise params.inspect 

    #@reservations = Reservation.new(params[:reservation])


if current_user.limite 

  redirect_to "/pages/limite"
  return false

  end






  
  code1=Invitation.aleatoire
  
  
 @reservations = Reservation.new(reservation_params)
 id=params[:idinvitation]
 @invitation=Invitation.find(params[:idinvitation])

  @tabmulti=@invitation.multidates
  @multi=@tabmulti.find_by_id(params[:idmulti])

    
  
  
  places_demander=params[:reservation][:nombreinvitations]
  places_restante=(@multi.placex.to_i)-(places_demander.to_i)   # on soustrait le nombre de place


  if current_user.limite 

  #redirect_to "/pages/limite"
  #return false

  end


  if places_restante < 0 

  redirect_to "/pages/epuise"

  else

  
  current_user.update_attribute(:limite, true)


  @multi.update_attribute(:placex, places_restante)
 
  

 
  @reservations.nombreinvitations=params[:reservation][:nombreinvitations] 
  @reservations.titre=params[:titre]   # ici on recupere directement le champ du form ds l'id car ce n est pas un f.text_field 
  @reservations.dateinvitation=params[:dateinvitation] 
  @reservations.adresse=params[:adresse] 
  @reservations.vraiadresse=params[:vraiadresse]  
  @reservations.emailpartenaire=params[:emailpartenaire]  
  @reservations.author_id =current_user.id

  @reservations.invitation_id =params[:idinvitation]
  @reservations.email_membre =current_user.username
  @reservations.pseudo =current_user.email
  @reservations.author_nom =current_user.nom
  @reservations.author_prenom =current_user.prenom
  @reservations.sexe =current_user.sexe
  @reservations.code=code1
  @reservations.envoiemail = "true"
  
  @reservations.save   #on sauvegarde

   Notifier.send_resa_email(@reservations).deliver

    
   redirect_to "/pages/confirmation"

 end

  end

  def finalisation


     
     @invitation=Invitation.find_by_id(params[:id])
     @reservation=Reservation.new
     @author=current_user

     @tabmulti=@invitation.multidates

     @multi=@tabmulti.find_by_id(params[:idmulti])

 


  end






	def reservation_params
    params.require(:reservation).permit(:nombreinvitations)
  end





	

end
