class EmailMailer < ActionMailer::Base
  default to: "studentsagainstviolence@gmail.com"

  def contact_mailer(contact)
    @contact = contact
    mail(from: contact.email,
         subject: 'New message from SAV project contact form')
  end
end
