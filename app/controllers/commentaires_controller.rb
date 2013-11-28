class CommentairesController < ApplicationController
def create              # le submit va chercher la methode create

 #@user=current_user
  @commentaires = Commentaire.new(commentaire_params)
 
   @commentaires.author_id = params[:author_id]

   @commentaires.body = params[:commentaire][:body]   


   @commentaires.author_name=current_user.username
  
  @commentaires.save   #on sauvegarde
   redirect_to author_path(@commentaires.author_id)     # redirection vers le show du profil

end

def commentaire_params
    params.require(:commentaire).permit(:body)
  end



end
