class Task < ApplicationRecord
  belongs_to :room
  validates :name, :user, presence: true
end
