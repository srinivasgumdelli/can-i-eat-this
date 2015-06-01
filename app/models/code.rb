class Code < ActiveRecord::Base
  has_many :ingredients, through: :ingredient_condition_codes
  has_many :conditions, through: :ingredient_condition_codes
end
