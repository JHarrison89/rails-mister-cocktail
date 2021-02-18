class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, length: { minimum: 1 }
end
