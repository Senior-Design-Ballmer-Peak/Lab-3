class AddLocationToTeamMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :team_members do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :hometown
      # add other fields here
      t.timestamps
    end
  end
end
