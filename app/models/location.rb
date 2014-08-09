class Location < ActiveRecord::Base
  belongs_to :device

  validates_presence_of :latitude, :longitude, :time

  def to_s
    "#{id}: #{latitude} #{longitude} #{time}"
  end

end
