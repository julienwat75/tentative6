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
   @invitation=Invitation.all
   
   @invitation.each do |t| 
       puts "done."

        if t.envoiemail && Invitation.late2(t.heuremailpartenaire)

             Notifier.send_partenaires_email(t).deliver
        end
      
      
     if t.envoiemail

                  if Invitation.late2(t.heuremailpartenaire)
     
                    
                  
                
                   
                   Notifier.send_partenaires_email(t).deliver

                   t.update_attribute(:envoiemail, "false") 
                   
                    
                    

                  end
     

    end 



  end


end