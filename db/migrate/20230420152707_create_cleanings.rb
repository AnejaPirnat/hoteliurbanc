class CreateCleanings < ActiveRecord::Migration[7.0]
  def change
    create_table :cleanings do |t|
      t.time :hour

      t.timestamps
    end
  end
end
