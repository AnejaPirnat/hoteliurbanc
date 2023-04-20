class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.timestamp :ordered
      t.boolean :complete

      t.timestamps
    end
  end
end
