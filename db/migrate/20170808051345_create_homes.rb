class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      
      t.integer :houseID
      t.string :host_email
      t.string :houseName
      t.string :address
      t.integer :phoneNumber
      t.integer :phoneNumber2
      t.string :introduce
      t.string :rule
      t.string :notice
      t.string :univ
      t.string :img_house
      
      t.timestamps null: false
    end
  end
end
