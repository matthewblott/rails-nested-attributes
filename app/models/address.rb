class Address < ApplicationRecord
  validates :address_line_1, presence: true, length: {maximum: 100}
  # validates :address_line_2, length: {maximum: 100}
  # validates :postal_town, presence: true, length: {maximum: 100}
  # validates :county, presence: true, length: {maximum: 100}
  # validates :post_code, presence: true

  has_and_belongs_to_many :customers, inverse_of: :addresses
end
