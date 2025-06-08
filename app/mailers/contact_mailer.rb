class ContactMailer < ApplicationMailer
  def contact_email(email, phone, message)
    @email = email
    @phone = phone
    @message = message

    mail(
      to: "c9long@uwaterloo.ca",
      from: email,
      subject: "New Contact Form Submission"
    )
  end
end
