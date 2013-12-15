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
  @invitations.adresse = params[:invitation][:adresse]  # on reccupere le nom du form 
  @invitations.avatar = params[:invitation][:avatar]  # on reccupere le nom du form
  
  @invitations.author_id =current_user.id
  @invitations.save   #on sauvegarde
   redirect_to pageinvitations_path     # redirection vers l'index

end

def edit

@invitation=Invitation.find(params[:id])
end

def update

  var = params[:invitation][:dateinvitation]  # on reccupere le nom du form
  heure=params[:heure1]
  minute=params[:minute1]
  seconde="00"
  var3=var + " " + heure + ":" + minute + ":" + seconde 
  

@invitation = Invitation.find params[:id]
#@invitation.update_attributes(validation: 'true')
@invitation.update_attributes(titre: params[:invitation][:titre],description: params[:invitation][:description],validation: 'true',dateinvitation: var3)
#@invitation.update_attributes(description: params[:invitation][:description])
#@invitation.update_attributes(avatar: params[:invitation][:avatar])
 #@invitation.update_attributes(avatar: params[:invitation][:datetime])


 redirect_to webmasters_path 
           
           #binding.pry 
           #raise params.inspect 


     

  end


def destroy
    @invitations=Invitation.find(params[:id])


    end


def profil_params
    params.require(:invitation).permit(:titre,:description,:avatar,:datetime)
  end





end
