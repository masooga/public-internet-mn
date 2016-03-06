class CreateAccesspoints < ActiveRecord::Migration
  def change
    create_table :accesspoints do |t|
      t.string :streetaddress
      t.string :city
      t.string :zipcode
      t.boolean :publicbuilding
      t.boolean :wirelessavailable
      t.integer :publicworkstations
      t.integer :downloadspeed
      t.integer :uploadspeed
      t.boolean :passwordrequired

      t.timestamps null: false
    end
  end
end
