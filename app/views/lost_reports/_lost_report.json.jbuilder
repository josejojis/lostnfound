json.extract! lost_report, :id, :name, :location, :date_lost, :created_at, :updated_at
json.url lost_report_url(lost_report, format: :json)
