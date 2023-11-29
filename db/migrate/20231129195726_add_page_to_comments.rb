# db/migrate/xxxxxx_add_page_to_comments.rb
class AddPageToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :page, :string
  end
end
