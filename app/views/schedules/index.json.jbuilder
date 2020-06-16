json.array! @schedules, partial: "schedules/schedule", as: :schedule

json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :title, :address, :details
  json.start schedule.start_date
  json.end schedule.end_date
  json.url schedule_url(schedule, format: :html)
end