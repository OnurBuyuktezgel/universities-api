json.array! @universities do |university|
  json.extract! university, :id, :name, :url, :country, :address, :phone, :latitude, :longitude, :facebook, :twitter, :instagram, :linkedin, :umultirank
end
