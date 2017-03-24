class Dinosaur < ApplicationRecord
  belongs_to :dinosaur_type
  has_many :dinosaur_prey
  has_many :prey, through: :dinosaur_prey
end
