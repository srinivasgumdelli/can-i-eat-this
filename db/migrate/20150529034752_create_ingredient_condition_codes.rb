class CreateIngredientConditionCodes < ActiveRecord::Migration
  def change
    create_table :ingredient_condition_codes do |t|

      t.timestamps null: false
    end
  end
end
