class ContactsController < ApplicationController
  def create
    ContactMailer.homepage_email(
      name: contact_params[:name],
      email: contact_params[:email],
      text: contact_params[:description]
    ).deliver_now
    head :ok
  end

  private

  def contact_params
    params.require(:contact)
          .permit(:email, :name, :description)
  end
end
