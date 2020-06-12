class Animal < ApplicationRecord

  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true

  scope :search_by_name, -> (name) { where('name ilike ?', name) }
end
