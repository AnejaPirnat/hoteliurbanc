class CreateActivitiesTables < ActiveRecord::Migration[7.0]
  def change
    create_table :activities_tables do |t|
      t.timestamp :ordered
      t.boolean :complete

      t.timestamps
    end
  end
end
