desc "This task is called by the Heroku scheduler add-on"


task :update_feed => :environment do

   
   @invitation=Invitation.all
   
   @invitation.each do |t| 

    
       


       titre=t.titre 
       date1= DateTime.now
       vraidate=date1.to_datetime + (1.hours)
       
       
       envoiemail=t.envoiemail
       heuremail=t.heuremailpartenaire
        #newheure=  t.heuremailpartenaire.to_datetime + (5.year)  


       puts "il est #{vraidate}"
        puts "L'envoie du mail est a #{heuremail}"

           
        


       if (envoiemail)  &&  (vraidate.to_datetime > heuremail.to_datetime)

        puts "le titre est #{titre}"
         puts "autorisation #{envoiemail}"
       puts "on envoie le mail"
        #t.update_attribute(:heuremailpartenaire,newheure) 
        t.update_attribute(:envoiemail, "false") 
         puts "on envoie le mail2"
         Notifier.send_partenaires_email(t).deliver
             

       end
  

       
       
      
    


  


end



end

task :reset_reservations => :environment do
  #User.send_reminders
   @author=Author.all

   @author.each do |t| 

     t.update_attribute(:limite, "false")
     

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