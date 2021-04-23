# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

uni_url = 'https://raw.githubusercontent.com/Hipo/university-domains-list/master/world_universities_and_domains.json'
uni_serialized = open(uni_url).read
uni = JSON.parse(uni_serialized)

puts "Clearing the database..."

  User.first.universities.destroy_all

puts "Done."

puts "Creating universities..."

  uni.each do |u|
    University.create(name: u["name"],
                      address: u["name"],
                      url: u["web_pages"].first,
                      country: u["country"],
                      user: User.first)
  end

puts "Done! #{University.count} universities have been added to the database!"

