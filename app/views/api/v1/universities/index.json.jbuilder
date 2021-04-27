json.array! @universities do |university|
  json.extract! university, :name,
                            :url,
                            :country,
                            :address,
                            :phone,
                            :latitude,
                            :longitude,
                            :facebook,
                            :twitter,
                            :instagram,
                            :linkedin,
                            :umultirank,
end
