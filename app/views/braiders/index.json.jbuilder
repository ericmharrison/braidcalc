json.array!(@braiders) do |braider|
  json.extract! braider, :id, :name, :number_of_carriers, :carrier_speed, :carrier_diameter
  json.url braider_url(braider, format: :json)
end
