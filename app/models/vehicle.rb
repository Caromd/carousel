class Vehicle < ActiveRecord::Base
  belongs_to :make
  belongs_to :model
  belongs_to :plan
  belongs_to :interior_colour
  belongs_to :paint_colour
end
