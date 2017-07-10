class Address < ApplicationRecord
  belongs_to :user

  validates :street, :city, :state, :zip, presence: true
  validates :zip, length: { is: 5 }
  validates :zip, numericality: true

  # after_validation :geocode_address
  #   def geocode_address
  #     self.latlon = Geocoder.new(request.ip)
  #   end

end
