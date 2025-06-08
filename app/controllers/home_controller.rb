class HomeController < ApplicationController
  def index
  end

  def contact
    email = params[:email]
    phone = params[:phone]
    message = params[:message]

    ContactMailer.contact_email(email, phone, message).deliver_now

    flash[:notice] = "Thank you for your message!"
    redirect_to root_path
  end
end
