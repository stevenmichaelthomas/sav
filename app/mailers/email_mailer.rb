class EmailMailer < ActionMailer::Base
  default to: Rails.env.production? ? "studentsagainstviolencerru@gmail.com" : "steve@onbluedot.com"

  def contact_mailer(contact)
    @contact = contact
    mail(from: contact.email,
         subject: 'New message from SAV project contact form')
  end

  def support_mailer(support)
    @support = support
    mail(from: support.email.present? ? support.email : "studentsagainstviolencerru@gmail.com",
         subject: 'New application from SAV project peer support form')
  end
end
