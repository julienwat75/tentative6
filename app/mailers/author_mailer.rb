class AuthorMailer < ActionMailer::Base
  default from: "julien_wat@hotmail.fr"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.author_mailer.reset_password_email.subject
  #
  def reset_password_email(author)
    @author = author
  @url  = edit_password_reset_url(author.reset_password_token)
  mail(:to => author.username,
       :subject => "Your password has been reset")
  end
end
