json.extract! schedule, :id, :title, :address, :details, :start_date, :end_date, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
