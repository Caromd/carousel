class AddPreOrderIndicatorToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :pre_order_indicator, :boolean
  end
end
