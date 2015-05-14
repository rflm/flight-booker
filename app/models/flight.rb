class Flight < ActiveRecord::Base
  validates :from_airport, presence: true, format: { with: /\d/ }
  validates :to_airport, presence: true, format: { with: /\d/ }

  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name: 'Airport'

  has_many :bookings
  has_many :passengers, through: :bookings

  def self.dates
    all.collect { |f| [f.date_formatted, f.start.to_date] }.uniq.sort
  end

  def self.to_airports
    all.collect(&:to_airport).uniq
  end

  def date_formatted
    start.strftime('%d/%m/%Y')
  end
end
