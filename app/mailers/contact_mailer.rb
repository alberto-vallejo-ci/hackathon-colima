class ContactMailer < ApplicationMailer
  default to: "contacto@hackcolima.com"

  def homepage_email(name:, subject:, email:, text:)
    @name = name
    @email = email
    @text = text
    mail(subject: subject, from: @email)
  end
end
