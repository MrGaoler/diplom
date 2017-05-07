json.extract! card, :id, :card_type, :name, :description, :schedule, :created_at, :updated_at
json.url card_url(card, format: :json)
