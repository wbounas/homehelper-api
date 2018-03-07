class Room < ApplicationRecord
  has_many :tasks
  belongs_to :user
  validates :name, :user, presence: true
end
