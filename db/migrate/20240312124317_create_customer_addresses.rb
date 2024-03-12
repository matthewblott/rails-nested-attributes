class CreateCustomerAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table(:customer_addresses, primary_key: [:customer_id, :address_id]) do |t|
      t.references(:customer, null: false, foreign_key: true)
      t.references(:address, null: false, foreign_key: true)
    end
  end
end
