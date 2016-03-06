json.array!(@accesspoints) do |accesspoint|
  json.extract! accesspoint, :id, :streetaddress, :city, :zipcode, :publicbuilding, :wirelessavailable, :publicworkstations, :downloadspeed, :uploadspeed, :passwordrequired
  json.url accesspoint_url(accesspoint, format: :json)
end
