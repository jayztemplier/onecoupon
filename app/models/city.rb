class City < ActiveRecord::Base

  has_many :neighbourhoods
  validates :name, uniqueness: true, :presence => true
  attr_accessible :name
end
