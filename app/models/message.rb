class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :title, :id, :phone, :mobile, :marital_status, :ethnic_group, :graduate, :address1, :suburb, :postal_code, :period_at_address, :residential_status

  validates :name, presence: true
  validates :email, presence: true

end