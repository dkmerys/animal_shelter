class Animal < ApplicationRecord

  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true


  scope :search, -> (name, breed, gender, age) do 
    where(
      'name ilike ?', name
    ).or(
      where('breed ilike ?', breed)
    ).or(
      where('gender ilike ?', gender)
    ).or(
      where('age ilike ?', age)
    )
  end
end
