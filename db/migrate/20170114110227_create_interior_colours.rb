class CreateInteriorColours < ActiveRecord::Migration
  def change
    create_table :interior_colours do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
