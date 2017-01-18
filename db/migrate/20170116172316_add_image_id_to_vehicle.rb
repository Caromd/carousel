class AddImageIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :image_id, :string
  end
end
