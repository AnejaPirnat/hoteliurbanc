class AddPriceToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :price, :float
  end
end
