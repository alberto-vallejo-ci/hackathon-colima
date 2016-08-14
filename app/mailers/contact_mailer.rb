class ContactMailer < ApplicationMailer
  default to: "contacto@hackcolima.com", from: "contacto@hackcolima.com"

  def homepage_email(name:, email:, text:)
    @name = name
    @email = email
    @text = text
    mail(subject: "Nuevo mensaje desde la página inicial")
  end
end
