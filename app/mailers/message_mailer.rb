class MessageMailer < ActionMailer::Base

  default from: "Application Form <rcdeppe@gmail.com>"
  default to: "Carousel Cars <rcdeppe@gmail.com>"


  def new_message(message)
    @message = message
    #content type:     "text/html"
    mail subject: "Application Form from #{message.name}"
  end

end