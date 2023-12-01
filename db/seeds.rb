# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Define an array of team members with their attributes
team_members_data = [
  { name: 'Charlie', hometown: 'Hermosa Beach, USA', latitude: 33.8622, longitude: 118.3995 },
  { name: 'Trey', hometown: 'Waverly, USA', latitude: 42.7272, longitude: 92.4669 },
  { name: 'Tristan', hometown: 'Minneapolis, USA', latitude: 44.9778, longitude: 93.2650 },
  { name: 'Miles', hometown: 'Bloomfield, USA', latitude: 40.7517, longitude: 92.4149 }
]

# Iterate over the array and create or update each team member
team_members_data.each do |member_data|
  TeamMember.find_or_create_by!(name: member_data[:name]) do |member|
    member.hometown = member_data[:hometown]
    member.latitude = member_data[:latitude]
    member.longitude = member_data[:longitude]
  end
end
