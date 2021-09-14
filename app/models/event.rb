class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invitation, dependent: :destroy
  has_many :attendees, through: :invitation, source: :user

  scope :past, -> { where('start_date < ?', Date.today) }
  scope :upcoming, -> { where('start_date >= ?', Date.today) }

  validates :name, :start_date, :end_date, :location, :description, :creator_id, presence: true
end
