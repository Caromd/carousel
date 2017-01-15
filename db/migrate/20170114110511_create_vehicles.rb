class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.references :make, index: true, foreign_key: true
      t.references :model, index: true, foreign_key: true
      t.references :plan, index: true, foreign_key: true
      t.references :interior_colour, index: true, foreign_key: true
      t.references :paint_colour, index: true, foreign_key: true
      t.string :mileage
      t.string :year
      t.string :fuel
      t.string :transmission
      t.integer :price
      t.string :stock_number
      t.string :derivative
      t.string :prior_use
      t.string :vehicle_type
      t.string :drive
      t.string :paint_colour
      t.string :interior_colour
      t.string :displacement
      t.string :fuel_type
      t.string :transmission
      t.string :description
      t.boolean :full_service_history
      t.boolean :one_owner
      t.boolean :low_kilometers
      t.boolean :abs_brakes
      t.boolean :air_conditioning
      t.boolean :alarm
      t.boolean :alloy_wheels
      t.boolean :central_locking
      t.boolean :electric_windows
      t.boolean :immobilizer
      t.boolean :power_steering
      t.boolean :airbags
      t.boolean :radio
      t.boolean :cd
      t.boolean :mp3

      t.timestamps null: false
    end
  end
end
