desc "This task is called by the Heroku scheduler add-on"


task :update_feed => :environment do
  puts "Updating feed..."
  
  puts "done."
  @authors=Author.find_by_id(3)
  @authors.update_attribute(:prenom,"boubou")
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
   puts "done."
   @reservation=Reservation.all
   
   @reservation.each do |t| 
      t.update_attribute(:envoiemail, "false") 
      t.update_attribute(:titre, "Michou") 
      
     if t.envoiemail
        if t.late(t.heuremailpartenaire)

         t.update_attribute(:envoiemail, "false") 
        else
         t.update_attribute(:envoiemail, "false") 
        end
     

    end 

  end

end