json.array!(@braid_configs) do |braid_config|
  json.extract! braid_config, :id, :braider_id, :pinion_teeth, :gear_teeth, :inches_per_minute, :feet_per_hour, :picks_per_inch
  json.url braid_config_url(braid_config, format: :json)
end
