class Room < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user
  validates :name, :user, presence: true
end
