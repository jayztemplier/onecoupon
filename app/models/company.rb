class Company < ActiveRecord::Base
  belongs_to :city
  belongs_to :neighbourhood
  belongs_to :category
  
  attr_accessible :name, :email, :phone_number, :address, :city, :city_id, :neighbourhood, :neighbourhood_id, :category, :category_id

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i}
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :city_id, presence: true
  validates :neighbourhood_id, presence: true
  validates :category_id, presence: true
end
