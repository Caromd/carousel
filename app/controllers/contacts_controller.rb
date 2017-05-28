class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    # @google_map = "https://maps.googleapis.com/maps/api/staticmap?center=-34.0409774,18.4617754&markers=color:blue%7Clabel:Carousel+Cars%7C-34.0409774,18.4617754&size=300x300&zoom=15"
    @google_map = "https://maps.googleapis.com/maps/api/staticmap?center=carousel+cars,+diep+river,+south+africa&zoom=15&scale=1&size=300x300&maptype=roadmap&format=png&visual_refresh=true&markers=size:mid%7Ccolor:red%7Clabel:Carousel+Cars%7Ccarousel+cars,+diep+river,+south+africa"
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