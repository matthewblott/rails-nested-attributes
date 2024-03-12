class CreateAddressesCustomers < ActiveRecord::Migration[7.1]
  def change

    create_table(:addresses_customers, primary_key: [:address_id, :customer_id]) do |t|
      t.belongs_to(:address, null: false, foreign_key: true)
      t.belongs_to(:customer, null: false, foreign_key: true)
      # t.references(:customer, null: false, foreign_key: true)
      # t.references(:address, null: false, foreign_key: true)
    end
  end
end
