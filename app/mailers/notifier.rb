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
end
