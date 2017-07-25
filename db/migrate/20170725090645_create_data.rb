class CreateData < ActiveRecord::Migration[5.0]
  def change
    create_table :data do |t|
      t.string :room_type
      t.string :num_rooms
      t.string :square
      t.string :floor
      t.string :building_type
      t.string :structure_type
      t.string :floor_height

      t.timestamps
    end
  end
end
