FactoryGirl.define do
  factory :flight do |f|
    f.from_airport_id 1
    f.to_airport_id 2
  end
end