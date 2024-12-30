20.times do
  Property.create!({
    name: Faker::Company.name,
    headline: Faker::Company.catch_phrase,
    description: Faker::Company.bs,
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.secondary_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country
  })
end
