class MessagesController < ApplicationController

  def new
    @message = Message.new
    @graduate = ["Yes", "No"]
    @residential_statuses = ["Owner with bond", "Owner bond free", "Tenant", "Living with Family"]
    @employment_statuses = ["Employed","Self Employed","Contractor"]
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content, :title, :id, :phone, :mobile, :marital_status, :ethnic_group, :graduate, :address1, :suburb, :postal_code, :period_at_address, :residential_status)
  end

end