class ContactsController < ApplicationController
  respond_to :json, only: [:create]

  def create
    @contact = Contact.create(contact_params)

    EmailMailer.contact_mailer(contact_params).deliver

    respond_with @contact
  end

  def contact_params
    params.require(:contact)
          .permit(:name, :email, :message)
  end
end
