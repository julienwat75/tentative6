class InvitationsController < ApplicationController


before_filter :zero_authors_or_authenticated, except: [:index]	



def zero_authors_or_authenticated
  unless Invitation.count == 0 || current_user
    redirect_to login_path
    return false
  end
end


def index

@invitations=Invitation.all 	



end


def new
  @invitations = Invitation.new
  
end

def show

	@invitation=Invitation.find(params[:id])


	end


def create              # le submit va chercher la methode create

	

  @invitations = Invitation.new(profil_params)
  var = params[:invitation][:dateinvitation]  # on reccupere le nom du form
  heure=params[:heure1]
  minute=params[:minute1]
  seconde="00"
  var3=var + " " + heure + ":" + minute + ":" + seconde 
  
  @invitations.dateinvitation = DateTime.parse(var3)
  @invitations.titre = params[:invitation][:titre]  # on reccupere le nom du form
  @invitations.description = params[:invitation][:description]  # on reccupere le nom du form
  @invitations.avatar = params[:invitation][:avatar]  # on reccupere le nom du form
  
  @invitations.author_id =current_user.id
  @invitations.save   #on sauvegarde
   redirect_to invitations_path     # redirection vers l'index

end

def update


@invitations=Invitation.find(params[:id])

@invitations.update_attributes(:validation => 'true')

 redirect_to pageinvitations_path     # redirection vers l'index



  end

def destroy
    @invitations=Invitation.find(params[:id])

@invitations.update_attributes(:titre => 'baba')

    end


def profil_params
    params.require(:invitation).permit(:titre,:description,:avatar,:datetime)
  end





end
