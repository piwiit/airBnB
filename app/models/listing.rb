class Listing < ApplicationRecord
  validate :available_beds,
           presence: true,
           numericality: { only_integer: true, greater_than: 0 }
  validate :price,
           presence: true,
           numericality: { only_integer: true, greater_than: 0 }
  validate :description,
           length: { minimum: 140 },
           presence: true
  validate :welcome_message,
           presence: true
  to_belongs :user
  belongs_to :city
  has_many :reservations
  after_create :welcome_message
end
