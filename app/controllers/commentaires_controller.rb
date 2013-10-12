class CommentairesController < ApplicationController
def create              # le submit va chercher la methode create
  @commentaires = Commentaire.new(commentaire_params)
 
   @commentaires.author_id = params[:author_id]


  
  @commentaires.save   #on sauvegarde
   redirect_to author_path(@commentaires.author_id)     # redirection vers le show du profil

end

def commentaire_params
    params.require(:commentaire).permit(:author_name, :body)
  end



end
