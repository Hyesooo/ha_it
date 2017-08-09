class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      
      t.integer :roomID
      t.integer :houseID
      t.string :host_email
      t.text :condition
      t.integer :rent
      t.string :meal
      t.string :bug
      t.float :toilet
      t.string :only_F
      t.string :cool
      t.string :detail
      t.float :washer
      t.string :univ
      t.integer :floor
      t.integer :house_floor
      t.string :houseName
      t.string :address
      t.string :img_room
      
      t.timestamps null: false
    end
  end
end
