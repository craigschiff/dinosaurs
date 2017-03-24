class Prey < ApplicationRecord
  has_many :dinosaur_preys
  has_many :dinosaurs, through: :dinosaur_preys
end
