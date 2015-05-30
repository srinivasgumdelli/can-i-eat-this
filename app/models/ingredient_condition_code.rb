class IngredientConditionCode < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :condition
  belongs_to :code
end
