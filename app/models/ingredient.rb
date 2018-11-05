class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  # validates :dose, independent: :destroy
end
