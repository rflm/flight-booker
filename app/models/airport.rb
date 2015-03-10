class Airport < ActiveRecord::Base
  validates :code, presence: true, length: { is: 3 }, format: { with: /\A[A-Z]{3}\z/ }

  has_many :arriving_flights, class_name: "Flight", 
                              foreign_key: "to_airport_id"
  has_many :departing_flights, class_name: "Flight", 
                               foreign_key: "from_airport_id"
end
