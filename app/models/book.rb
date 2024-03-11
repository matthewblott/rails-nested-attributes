class Book < ApplicationRecord
  belongs_to :author, inverse_of: :books

  validates :title, presence: true

end
