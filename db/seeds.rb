puts "Cleaning the db..."
Pet.destroy_all
puts "Creating pets..."
50.times do
  Pet.create!(
    name: Faker::Games::WarhammerFantasy.hero,
    address: Faker::TvShows::RickAndMorty.location,
    species: Pet::SPECIES.sample,
    date: Date.today - rand(1...100),
    dead: [true, false, false, false].sample
  )
end
puts "Created #{Pet.count} pets..."
