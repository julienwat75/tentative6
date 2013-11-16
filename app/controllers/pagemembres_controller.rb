class PagemembresController < ApplicationController


def index

a=0


@author2=Author.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  4,
                       :offset      =>  a*4)     # numero de page qu on souhaite afficher
 


end


def show

    a=params[:id]


@author2=Author.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  4,
                       :offset      =>  a.to_i*4)     # a.to_i converti la string en int
 

  end




end
