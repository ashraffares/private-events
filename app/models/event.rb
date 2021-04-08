class Event < ApplicationRecord
  belongs_to :creator , class_name: 'User'
  has_many :invitation_lists, dependent: :destroy
  has_many :attendees, through: :invitation_lists, source: :user
end
