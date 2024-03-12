class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :postal_town
      t.string :county
      t.string :post_code

      t.timestamps
    end
  end
end
