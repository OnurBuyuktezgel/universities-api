json.array! @universities do |university|
  json.extract! university, :name, :url, :country, :address, :latitude, :longitude
end
