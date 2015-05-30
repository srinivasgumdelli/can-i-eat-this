class Ingredient < ActiveRecord::Base
  has_many :codes, through: :ingredient_condition_codes
  has_many :conditions, through: :ingredient_condition_codes
end
