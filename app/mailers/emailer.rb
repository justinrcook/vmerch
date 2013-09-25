class Emailer < ActionMailer::Base
  def contact_form(email)
    @email = email
    mail to: ENV['contact_email_to'],
      from: "#{email.name} <#{email.email}>",
      reply_to: email.email,
      subject: 'vmerch.me - Contact Form Submission'
  end
end
