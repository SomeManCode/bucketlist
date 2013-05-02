class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id 
  # validates :location, :presence => true

  geocoded_by :geolocate 
  # after_validation :geocode

  has_many :comments
  belongs_to :destination

   def geolocate
     # glues on destination to every location
     "#{self.location} #{destination.name}"
   end

end
