FactoryGirl.define do
  factory :flight do |f|
    f.from_airport Airport.create(code: 'SFO')
    f.to_airport Airport.create(code: 'NYC')
  end
end
