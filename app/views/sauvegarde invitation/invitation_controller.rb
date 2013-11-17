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
  @invitations.titre = params[:invitation][:titre]  # on reccupere le nom du form
  @invitations.description = params[:invitation][:description]  # on reccupere le nom du form
  
  @invitations.author_id =current_user.id
  @invitations.save   #on sauvegarde
   redirect_to invitations_path     # redirection vers l'index

end

def profil_params
    params.require(:invitation).permit(:titre,:description)
  end





end

