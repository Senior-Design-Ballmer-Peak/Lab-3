class RemoveNameFromComments < ActiveRecord::Migration[6.0]  # Update the version according to your Rails version
  def change
    remove_column :comments, :name
  end
end