class MessageMailer < ActionMailer::Base

  default from: "Application Form <itadmin@carouselmotorgroup.co.za>"
  default to: "Carousel Cars <itadmin@carouselmotorgroup.co.za>"


  def new_message(message)
    @message = message
    mail subject: "Application Form from #{message.name}"
  end

end