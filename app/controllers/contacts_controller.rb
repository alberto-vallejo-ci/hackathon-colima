class ContactsController < ApplicationController
  def create
    if contact_params_valid?
      ContactMailer.homepage_email(
        name: contact_params[:name],
        subject: contact_params[:subject],
        email: contact_params[:email],
        text: contact_params[:description]
      ).deliver_now
      head :ok
    else
      head :bad_request
    end
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:email, :name, :subject, :description)
  end

  def contact_params_valid?
    [
      contact_params[:email],
      contact_params[:name],
      contact_params[:subject],
      contact_params[:description]
    ].all?(&:present?)
  end
end
