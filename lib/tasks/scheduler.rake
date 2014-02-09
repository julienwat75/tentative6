desc "This task is called by the Heroku scheduler add-on"


task :update_feed => :environment do
  puts "Updating feed..."
  
  puts "done."
  @authors=Author.find_by_id(3)
  
  #Notifier.send_signup_email(@authors).deliver



end

task :reset_reservations => :environment do
  #User.send_reminders
   @author=Author.all

   @author.each do |t| 

     t.update_attribute(:limite, "false")
     t.update_attribute(:prenom,"patoch")

    end 

end


task :mail_partenaires => :environment do
  #User.send_reminders

  
   
   @invitation=Invitation.all
   
   @invitation.each do |t| 

    
       



       @date= DateTime.now
       
       
       @envoiemail=t.heuremailpartenaire
        #newheure=  t.heuremailpartenaire.to_datetime + (5.year)             
        


       #if @date.to_datetime > @envoiemail.to_datetime

       
        puts "on envoie le mail"
        #t.update_attribute(:heuremailpartenaire,newheure) 
        t.update_attribute(:envoiemail, "false") 
         puts "on envoie le mail2"
         #Notifier.send_partenaires_email(t).deliver
             

       #end
  

       puts "il est #{@date}"
        puts "L'envoie du mail est a #{@envoiemail}"


       
       
      
    


  


end


end