class Animal < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :gender, presence: true
end