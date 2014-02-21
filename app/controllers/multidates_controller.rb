class MultidatesController < ApplicationController


def create
  @multidate = Multidate.new
  @multidate.invitation_id = params[:invitation_id]
   @multidate.datex = params[:datex]
   @multidate.placex = params[:placex]


  var = params[:datex]
  heure=params[:heure1]
  minute=params[:minute1]
  seconde="00"
  var3=var + " " + heure + ":" + minute + ":" + seconde 
  
   @multidate.datex = DateTime.parse(var3)
   @multidate.update_attribute(:envoiemailx, true)


  @multidate.save

  redirect_to invitation_path(@multidate.invitation)
end

def multidate_params
  params.require(:multidate).permit(:datex, :placex)
end



end
