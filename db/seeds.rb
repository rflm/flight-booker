# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

codes = %w(SFO NYC CHI JKT LON MIL YMQ MOW)

codes.each do |c|
  Airport.create(code: c)
end

ids = (1..8).to_a

t = (1..30).to_a

3.times do
  Flight.create(from_airport_id: 1, to_airport_id: 2, start: 2.days.from_now)
end

99.times do
  f_id = ids.sample
  t_id = ids.sample

  t_id =  ids.sample while (t_id == f_id)

  Flight.create(from_airport_id: f_id, to_airport_id: t_id, start: t.sample.days.from_now)
end
