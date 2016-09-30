class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  validates_presence_of :address
  validates_presence_of :name

  # def self.markefy(array)
  #   markers = []
  #   array.each do |place|
  #     markers.push([place.name, place.latitude, place.longitude])
  #   end
  #   markers
  # end
end
