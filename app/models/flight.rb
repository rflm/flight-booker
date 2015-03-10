class Flight < ActiveRecord::Base
  validates :from_airport, presence: true, format: { with: /\d/ }
  validates :to_airport, presence: true, format: { with: /\d/ }
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
end
