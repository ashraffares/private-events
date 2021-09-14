json.extract! event, :id, :name, :start_date, :end_date, :location, :description, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
