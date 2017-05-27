class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver
      redirect_to vehicles_path, notice: "Your contact details have been sent to Carousel."
    else
      flash[:alert] = "An error occurred while delivering contact information."
      render :new
    end
  end

private

  def contact_params
    params.require(:contact).permit(
      :name, :email, :content, :phone, :interested_in
    )
  end

end