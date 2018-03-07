class Task < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :name, :room, presence: true
end
