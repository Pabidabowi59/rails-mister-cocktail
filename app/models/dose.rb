class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :cocktail_id, uniqueness: { scope: :ingredient_id , message: 'already exist'}
  validates :ingredient_id, presence: true
end
