class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :title, :id, :phone, :mobile, :marital_status, :ethnic_group, :graduate, :address1, :suburb, :postal_code
  attr_accessor :period_at_address, :residential_status, :employment_status, :period_in_job, :work_phone, :employer_name_and_address, :occupation
  attr_accessor :gross_salary, :other_income, :nett_salary, :monthly_expenses, :rent_or_bond
  attr_accessor :relative_name, :relative_mobile, :relative_residential_address, :relative_post_code, :relative_relationship

  validates :name, presence: true
  validates :email, presence: true

end