class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals   
  end

  def generate_animals
    25.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Dog.name
        breed: Faker::Creature::Dog.breed
        age: Faker::Number.within(range: 1..10)
        gender: Faker::Gender.binary
        quote: Faker::Quote::most_interesting_man_in_the_world
      )
      puts "Animal #{i}: Name is #{animal.name}, breed is #{animal.breed}, age is #{animal.age}, gender is #{animal.gender}, and quote is '#{animal.quote}'."
    end
    25.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Cat.name
        breed: Faker::Creature::Cat.breed
        age: Faker::Number.within(range: 1..14)
        gender: Faker::Gender.binary
        quote: Faker::Quote::most_interesting_man_in_the_world
      )
      puts "Animal #{i}: Name is #{animal.name}, breed is #{animal.breed}, age is #{animal.age}, gender is #{animal.gender}, and quote is '#{animal.quote}'."
    end
  end
end
