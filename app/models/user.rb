class User < ApplicationRecord
  validates :email,
            presence: true, # champ requis
            uniqueness: true, # vefification de doublon
            format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'Email adress please' } # format email requis
  validates :phone_number,
            presence: true,
            format: { with: /\A(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})\z/, message: 'please enter a valid french number' }
  has_many :reservations
  has_many :listings
end
