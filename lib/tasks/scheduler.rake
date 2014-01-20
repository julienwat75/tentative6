desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  
  puts "done."
  @authors=Author.find_by_id(3)
  @authors.update_attribute(:prenom,"bibi")
  Notifier.send_signup_email(@authors).deliver



end

task :send_reminders => :environment do
  #User.send_reminders
end
