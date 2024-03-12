class Customer < ApplicationRecord
  validates :name, presence: true

  # has_many :addresses, inverse_of: :customer

  has_and_belongs_to_many :addresses, inverse_of: :customers
  # has_many :customer_addresses
  # has_many :addresses, through: :customer_addresses

  accepts_nested_attributes_for :addresses
end
