json.array! @universities do |university|
  json.extract! university, :id, :name, :url, :country
end
