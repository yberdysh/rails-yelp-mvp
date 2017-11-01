# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list
# ["chinese", "italian", "japanese", "french", "belgian"].
# A review must have a parent restaurant.
# A review must have content and a rating.
# The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all
# Review.destroy_all

puts 'Creating restaurants and reviews...'

20.times do
  Restaurant.create!(
    name: [
      Faker::Food.spice,
      Faker::Food.ingredient,
      Faker::Lovecraft.deity,
      Faker::Lovecraft.location
      ].sample,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone,
    category: %w(italian japanese french belgian chinese russian mexican ethiopian thai indonesian vietnamese).sample
    )
end

puts 'Finished!'

    # 10.times do
    #   Article.create(title: Faker::HitchhikersGuideToTheGalaxy.quote, content: Faker::Lorem.paragraphs.join)
    # end
