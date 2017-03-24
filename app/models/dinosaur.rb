class Dinosaur < ApplicationRecord
  belongs_to :dinosaur_type
  has_many :dinosaur_preys
  has_many :preys, through: :dinosaur_preys
end
