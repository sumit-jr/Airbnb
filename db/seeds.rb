6.times do |i|
  property = Property.create!({
    name: Faker::Company.name,
    headline: Faker::Company.catch_phrase,
    description: Faker::Company.bs,
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    price: Money.from_amount(rand(50..100), 'USD')
  })

  property.images.attach(io: File.open("db/images/property_#{i + 1}.png"), filename: "propety.name")
  property.images.attach(io: File.open("db/images/property_#{i + 7}.png"), filename: "propety.name")
end
