class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  before_filter :zero_authors_or_authenticated, only: [:new, :create]


  before_filter :no_sessions, only: [:show]

def no_sessions
  unless Author.count == 0 || current_user
    redirect_to login_path
    return false
  end
end


def zero_authors_or_authenticated
  if current_user
    redirect_to root_path
    return false
  end
end

  # GET /authors
  # GET /authors.json
  def index
    @authors = Author.all
  end

  # GET /authors/1
  # GET /authors/1.json
  def show
     @authors = Author.find(params[:id]) #reccupere l'id de l url
     @commentaires = Commentaire.new
     @commentaires.author_id = @authors.id

     @username=current_user

     
  end

  # GET /authors/new
  def new
    @author = Author.new
    @faux=@author.errors.any?
  end

  # GET /authors/1/edit
  def edit
  end

  # POST /authors
  # POST /authors.json
  


def create              # le submit va chercher la methode create
  @authors = Author.new(author_params)
  
  @authors.username = params[:author][:username]  # on reccupere le nom du form
  @authors.email = params[:author][:email] # on reccupere le body du form 
  @authors.password = params[:author][:password] # on reccupere le body du form 
  @authors.password_confirmation = params[:author][:password_confirmation] # on reccupere le b
  @authors.avatar = params[:author][:avatar] # on reccupere le body 
  @authors.nom = params[:author][:nom]
  @authors.prenom = params[:author][:prenom]
  @authors.sexe = params[:author][:sexe]
  

  if @authors.save   #on sauvegarde
   redirect_to authors_path     # redirection vers l'index
   else
    @faux=@authors.errors.any?
     @author = @authors
     render 'new'
    end

end



  # PATCH/PUT /authors/1
  # PATCH/PUT /authors/1.json
  def update
    respond_to do |format|
      if @author.update(author_params)
        format.html { redirect_to authors_path, notice: 'Author was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authors/1
  # DELETE /authors/1.json
  def destroy
    @author.destroy
    respond_to do |format|
      format.html { redirect_to authors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:username, :email, :password, :password_confirmation, :avatar, :nom , :prenom, :sexe, :nom_resa)
    end
end
