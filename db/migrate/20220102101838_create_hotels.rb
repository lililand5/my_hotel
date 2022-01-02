class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :stars
      t.string :address
      t.string :link_map
      t.string :pay_one
      t.string :pay_two
      t.float :rating
      t.text :about_hotel
      t.text :services
      t.text :extra
      t.text :contacts

      t.timestamps
    end
  end
end
