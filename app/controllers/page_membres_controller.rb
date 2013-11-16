class PageMembresController < ApplicationController


def index


	

a=1


@author2=Author.find(:all,
                     :conditions => "",
                      :order      =>  "id DESC",
                      :limit      =>  10,
                       :offset      =>  a*10)     # numero de page qu on souhaite afficher
 


end	






end
