class MultidatesController < ApplicationController

	def create
  @multidate = Multidate.new
  @multidate.invitation_id = params[:invitation_id]
  @multidate.datex = params[:datex]
  @multidate.placex = params[:placex]
  @multidate.gratuit = params[:gratuit]
  x=100
  @prix = params[:price]

  

  @multidate.price = @prix.to_f * x



  var = params[:datex]
  heure=params[:heure1]
  minute=params[:minute1]
  seconde="00"
  var3=var + " " + heure + ":" + minute + ":" + seconde 

  @invitation=Invitation.find_by_id(params[:invitation_id])


 
  
   @multidate.datex = DateTime.parse(var3)

    heuremailpartenaire= @multidate.datex

    @multidate.heuremailpartenaire= heuremailpartenaire.to_datetime - (30.minutes) 
 



   @multidate.update_attribute(:envoiemailx, true)

   @invitation.update_attribute(:validation, true)
 


  @multidate.save

  redirect_to invitation_path(@multidate.invitation)
end

def multidate_params
  params.require(:multidate).permit(:datex, :placex, :gratuit)
end

end
