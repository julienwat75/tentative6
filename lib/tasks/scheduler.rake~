desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  
  puts "done."
  a=Author.find_by_id(3)
  a.update_attribute(:prenom,"cedric")


end

task :send_reminders => :environment do
  #User.send_reminders
end
