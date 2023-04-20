class AddActivityToActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities_tables, :activity, null: false, foreign_key: true
  end
end
