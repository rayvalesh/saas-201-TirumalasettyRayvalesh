class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #

  default from: ENV['username_from_mail']#'rayvalesh@gmail.com'

  def contact(message, to)
    @message = message
    @to = to
    mail(to: @to, subject: 'Activity on BlogPost Project Community')
  end
end
