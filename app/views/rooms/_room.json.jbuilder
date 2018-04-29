json.extract! room, :id, :hotel_id, :description, :price, :is_booked, :created_at, :updated_at
json.url room_url(room, format: :json)
