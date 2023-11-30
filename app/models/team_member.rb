# app/models/team_member.rb
class TeamMember < ApplicationRecord
  geocoded_by :hometown
  after_validation :geocode, if: ->(obj){ obj.hometown.present? and obj.hometown_changed? }
end
