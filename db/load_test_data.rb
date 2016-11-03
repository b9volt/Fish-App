# Trip.destroy_all

array = []

puts Faker::Random.number

# 10.times do
  Trip.create(
    id: Faker::Random.number,
    clientsHappy: Faker::Boolean,
    end: Faker::Date.past,
    numFishCaught: Faker::Random.number(30),
    rating: Faker::Random.number(5),
    start: Faker::Date.past,
    summary: Faker::Hacker.say_something_smart,
    user_id: 1,
    weather: Faker::Lorem.sentence
  )
# end

puts array
