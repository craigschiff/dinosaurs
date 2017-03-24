class DinosaurPrey < ApplicationRecord
  belongs_to :dinosaur
  belongs_to :prey
end
