class Task < ApplicationRecord
  belongs_to :room
  validates :name, :user, :room, presence: true
end
