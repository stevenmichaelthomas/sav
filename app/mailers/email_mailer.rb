class EmailMailer < ActionMailer::Base
  default to: "steve@onbluedot.com"

  def contact_mailer(contact)
    @contact = contact
    mail(from: contact.email, 
         subject: 'New message from SAV project contact form')  
  end
end
