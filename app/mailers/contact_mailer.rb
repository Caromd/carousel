class ContactMailer < ActionMailer::Base

  default from: "Contact Form <itadmin@carouselmotorgroup.co.za>"
  default to: "Carousel Cars <finance@carouselmotorgroup.co.za>"


  def new_contact(contact)
    @contact = contact
    mail subject: "Contact Form from #{contact.name}"
  end

end