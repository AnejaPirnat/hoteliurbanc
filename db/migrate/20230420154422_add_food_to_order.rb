class AddFoodToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :food, null: false, foreign_key: true
  end
end
