class Notifier < ActionMailer::Base
  default from: "stewfilm50@yahoo.fr"

#default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(author)
    @authors = author
    mail( :to => 'stewfilm50@yahoo.fr',
    :subject => 'Ca marche mon pote !!!!' )
  end
end
