class MailgeneralsController < ApplicationController


	def index 

	end
    
    def new

    	@mailgeneral=Mailgeneral.new

	end

	def create

    @mailgenerals = Mailgeneral.new(author_params)


    #binding.pry
  
    @mailgenerals.titre = params[:mailgeneral][:titre]  # on reccupere le nom du form
    @mailgenerals.body = params[:mailgeneral][:body]
    @mailgenerals.envoigeneral = params[:mailgeneral][:envoigeneral]
    @mailgenerals.maildestinataire = params[:mailgeneral][:maildestinataire] 

    @destinataire=params[:mailgeneral][:maildestinataire]
    @author=Author.new
    @author=Author.all
    @invitations=Invitation.all

			    if @mailgenerals.save   #on sauvegarde

			               if @mailgenerals.envoigeneral
							      @author.each do |author|

							        Notifier.send_mail_general(@mailgenerals,author,@invitations,@destinataire).deliver

                                   end
                           else
                              
                              author=Author.find_by_username("stewfilm50@yahoo.fr") 
                             
                              Notifier.send_mail_general(@mailgenerals,author,@invitations,@destinataire).deliver
        

                           end      

			   

			    else

			      flash.now.alert = "Mail failed."

			      

			      
			    end


    redirect_to mailgenerals_path  
  


	end


	def author_params
      params.require(:mailgeneral).permit(:titre, :body, :password, :envoigeneral, :maildestinataire)
    end
 



end
