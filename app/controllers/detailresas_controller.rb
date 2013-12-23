class DetailresasController < ApplicationController

def show

 @reservation=Reservation.find(params[:id])


end

def index


	end



end
