class Condition < ActiveRecord::Base
  has_many :ingredients, through: :ingredient_condition_codes
  has_many :codes, through: :ingredient_condition_codes
end
