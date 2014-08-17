class EmailMailer < ActionMailer::Base
  default to: "studentsagainstviolence@gmail.com"

  def contact_mailer(contact)
    @contact = contact
    mail(from: contact.email,
         subject: 'New message from SAV project contact form')
  end

  def support_mailer(support)
    @support = support
    mail(from: support.email,
         subject: 'New application from SAV project peer support form')
  end
end
