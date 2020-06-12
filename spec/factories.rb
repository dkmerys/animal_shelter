FactoryBot.define do
  factory(:animal) do
    name {Faker::Creature::Dog.name}
    breed {Faker::Creature::Dog.breed}
    age {Faker::Number.within(range: 1..10)}
    gender {Faker::Gender.binary_type}
    quote {Faker::Quote::most_interesting_man_in_the_world}
  end
end