class Vehicle < ActiveRecord::Base
  belongs_to :make
  belongs_to :model
  belongs_to :plan
  belongs_to :interior_colour
  belongs_to :paint_colour

  has_attachment :photo1 , accept: [:jpg, :png, :gif]
  has_attachment :photo2 , accept: [:jpg, :png, :gif]
  has_attachment :photo3 , accept: [:jpg, :png, :gif]
  has_attachment :photo4 , accept: [:jpg, :png, :gif]
end