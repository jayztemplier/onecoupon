class Neighbourhood < ActiveRecord::Base

  belongs_to :city
  validates :city_id, :presence => true
  validates :name, :presence => true
  attr_accessible :name, :city, :city_id
end
