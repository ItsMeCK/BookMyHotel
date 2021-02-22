json.extract! booking, :id, :customer_id, :room_id, :check_in, :check_out, :number_of_people, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)
