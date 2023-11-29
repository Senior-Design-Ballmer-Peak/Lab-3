class Comment < ApplicationRecord
  belongs_to :user
  validates :page, presence: true
end
