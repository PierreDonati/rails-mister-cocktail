class Ingredient < ApplicationRecord

  INGREDIENTS = Ingredient.all


  validates :name, presence: true, uniqueness: true

  has_many :doses
end
