class Author < ApplicationRecord
  has_many :books, dependent: :destroy, inverse_of: :author

  validates :name, presence: true

  accepts_nested_attributes_for :books

end
