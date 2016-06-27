class SendMailer < ApplicationMailer
	default from: "contact@grep.services"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mailer.contact.subject
  #
  def contact(email)
    @email = email

    mail to: "contact@grep.services",
     subject: "[SMTA]Contact from client landing page"
  end
end
