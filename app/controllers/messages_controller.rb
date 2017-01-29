class MessagesController < ApplicationController

  def new
    @message = Message.new
    @marital_statuses = ["Single", "Married ANC", "Married COP"]
    @ethnic_groups = %w(Black White Coloured Asian)
    @graduates = ["Yes", "No"]
    @residential_statuses = ["Owner with bond", "Owner bond free", "Tenant", "Living with Family"]
    @employment_statuses = ["Employed","Self Employed","Contractor"]
    @titles = %w(Mr Mrs Ms Dr Prof)

    @vehicle = Vehicle.find_by_id(params[:vehicle_id].to_i) unless params[:vehicle_id].nil?

  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to vehicles_path, notice: "Your application has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(
      :name, :email, :content, :title, :id, :phone, :mobile, :marital_status,
      :ethnic_group, :graduate, :address1, :suburb, :postal_code, :period_at_address,
      :residential_status, :employment_status, :period_in_job, :work_phone, :employer_name_and_address, :occupation,
      :gross_salary, :other_income, :nett_salary, :monthly_expenses, :rent_or_bond,
      :relative_name, :relative_mobile, :relative_residential_address, :relative_post_code, :relative_relationship,
      :vehicle_id, :make, :model, :colour, :year, :mileage, :price, :deposit, :stock_number
    )
  end

end