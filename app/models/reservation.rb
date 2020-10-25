class Reservation < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  belongs_to :guest, class_name: 'User'
  belongs_to :administrator, class_name: 'User'
end
