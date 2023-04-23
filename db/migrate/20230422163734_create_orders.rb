class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :service, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :priceAtPurchase
      t.references :receipt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
