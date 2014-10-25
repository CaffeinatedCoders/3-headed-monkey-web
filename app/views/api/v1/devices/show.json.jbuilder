
json.name @device.name
if @device.locations.last
	json.last_location @device.locations.last.time
end
