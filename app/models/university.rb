class University < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  validates :name, presence: true
end
