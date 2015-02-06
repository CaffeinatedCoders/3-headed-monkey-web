json.last_location @device.locations.latest.as_json(only: [:latitude, :longitude, :altitude, :accuracy, :time, :created_at])
json.messages @messages.as_json(only: [:text, :created_at])
