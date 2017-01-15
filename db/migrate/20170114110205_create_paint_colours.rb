class CreatePaintColours < ActiveRecord::Migration
  def change
    create_table :paint_colours do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
