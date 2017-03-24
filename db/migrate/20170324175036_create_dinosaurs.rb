class CreateDinosaurs < ActiveRecord::Migration[5.0]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.belongs_to :dinosaur_type, foreign_key: true
      t.integer :weight
      t.integer :badass_index

      t.timestamps
    end
  end
end
