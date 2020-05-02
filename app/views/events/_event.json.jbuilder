json.extract! event, :id, :name, :description, :start_time, :length, :repeat_daily, :repeat_weekly, :created_at, :updated_at
json.url event_url(event, format: :json)
