# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Bird.destroy_all

require 'csv'

CSV.foreach('./db/csv/bird-data.csv', headers: true) do |row|
   new_bird = Bird.find_or_create_by(
       tag: row["tag-local-identifier"],
       name: row["species-generic-name"],
       species: row["individual-taxon-canonical-name"]
    )
    new_bird.locations.create(
        date: row["date"],
        latitude: row["location-lat"],
        longitude: row["location-long"]
    )
end