class AddCleaningToCleaningTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :cleaning_tables, :cleaning, null: false, foreign_key: true
  end
end
