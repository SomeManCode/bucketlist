class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude

  validates :location, :presence => true

  geocoded_by :location 
  after_validation :geocode 

  has_many :comments
  belongs_to :destination

  def location
    # glues on destination to every location
    "#{self.location} #{destination.name}"
  end

end
