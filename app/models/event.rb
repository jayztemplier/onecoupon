class Event < ActiveRecord::Base
  belongs_to :company
  attr_accessible :name, :company, :company_id, :discount_summary, :description, :start_date, :end_date, :total_number, :bought_number, :validated
  validates :name, presence: true
  validates :company_id, presence: true
  validates :discount_summary, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_number, presence: true, numericality: { greater_than: 0 }
  validates :bought_number, presence: true
  validate :start_date_is_in_the_future
  validate :end_date_bigger_than_start_date
  validate :bought_number_not_bigger_than_total_number

  scope :validated, lambda { where("validated = ?", true ) }
  scope :in_the_future, lambda { where("start_date > ?", Time.zone.now ) }
  scope :in_the_past, lambda { where("start_date < ?", Time.zone.now ) }

  private
  def start_date_is_in_the_future
    errors.add(:start_date, "must be a future date") unless start_date.future? # start_date > Time.zone.now
  end

  def end_date_bigger_than_start_date
    errors.add(:end_date, "must be a date after the start date") unless end_date > start_date
  end
  
  def bought_number_not_bigger_than_total_number
  	errors.add(:bought_number, "can't be bigger than the total number available.") if bought_number > total_number
  end
end
