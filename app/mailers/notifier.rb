class Notifier < ActionMailer::Base
  default from: "billetgratuitparis@gmail.com"

#default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(author)
    @authors = author
    mail( :to => @authors.username,
    :subject => 'Votre inscription !!!!' )
  end


   def send_resa_email(reservation)
    @reservations = reservation
    mail( :to => @reservations.email_membre,
    :subject => 'Votre réservation !!!!' )
  end

 def send_partenaires_email(reservation)
    
    @invitations = reservation
    mail( :to => @invitations.emailpartenaire,
    :subject => 'Réservation BilletGratuit.com' )
  end


def send_mail_general(mailgeneral, authors, invitations)
    # can't send without a message, and an array of contacts 
    @mailgeneral = mailgeneral
    @authors = authors
    @invitations = invitations

    # with variables set, let's create the loop to do its magic 
    @authors.each do |author|

 if @mailgeneral.envoigeneral
        mail = mail(
          :to => "#{author.username}",
          :subject => "Nouvelles invitations")

      elsif author.username == "roxana.rugina@gmail.com" || author.username == "stewfilm50@yahoo.fr"
         mail = mail(
          :to => "#{author.username}",
          :subject => "Nouvelles invitations")


end
         
    end # contacts.each loop
 end #blast 



end
