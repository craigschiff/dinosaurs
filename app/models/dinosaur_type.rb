class DinosaurType < ApplicationRecord
  has_many :dinosaurs
  has_many :dinosaur_prey, through: :dinosaurs
  has_many :prey, through: :dinosaur_prey

end
