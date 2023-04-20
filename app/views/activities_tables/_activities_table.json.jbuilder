json.extract! activities_table, :id, :ordered, :complete, :created_at, :updated_at
json.url activities_table_url(activities_table, format: :json)
