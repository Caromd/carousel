class Contact

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :phone, :interested_in

  validates :name, presence: true
  validates :phone, presence: true

end