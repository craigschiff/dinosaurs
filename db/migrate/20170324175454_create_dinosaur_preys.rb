class CreateDinosaurPreys < ActiveRecord::Migration[5.0]
  def change
    create_table :dinosaur_preys do |t|
      t.belongs_to :dinosaur, foreign_key: true
      t.belongs_to :prey, foreign_key: true

      t.timestamps
    end
  end
end
