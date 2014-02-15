class AuthorMailer < ActionMailer::Base
  default from: "billetgratuitparis@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.author_mailer.reset_password_email.subject
  #
  def reset_password_email(author)
    @author = author
  @url  = edit_password_reset_url(author.reset_password_token)
  mail(:to => author.username,
       :subject => "Réinitialiser votre mot de passe")
  end
end
