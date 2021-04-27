# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

# ----------------------------------------------------------
# puts "1- Clearing the database..."

#   User.first.universities.destroy_all

# puts "Done."
# puts "2- Parsing university list..."

# uni_url = 'https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json'
# uni_serialized = open(uni_url).read
# uni = JSON.parse(uni_serialized)

# puts "Done."
# puts "3- Creating universities..."

#   uni.each do |u|
#     University.create(name: u["name"],
#                       address: u["name"],
#                       url: u["web_pages"].first,
#                       country: u["country"],
#                       user: User.first)
#   end

# puts "#{University.count} universities have been added to the database!"

# ----------------------------------------------------------

# puts "Now making it fancier, please wait a little bit more."

# University.all.each do |uni|
#   if uni.name == uni.address
#     uni.address = nil
#     uni.save!
#   end
# end

# ----------------------------------------------------------

# puts "Parsing UMR api"

  # umr_url = 'https://www.umultirank.org/json/exploreUniFinder.json'
  # umr_serialized = open(umr_url).read
  # umr_uni = JSON.parse(umr_serialized)


  # umr_uni["unis"].each do |umr|
  #   unless University.find_by(name: "#{umr["name"]}").nil?
  #     University.find_by(name: "#{umr["name"]}").update!(
  #       url: umr["url"],
  #       facebook: umr["facebook"],
  #       twitter: umr["twitter"],
  #       phone: umr["tele"],
  #       instagram: umr["instagram"],
  #       linkedin: umr["linkedin"],
  #       umultirank: "https://www.umultirank.org/study-at/#{umr["slug"]}")
  #   end
  # end

