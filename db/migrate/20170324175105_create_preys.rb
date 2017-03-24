class CreatePreys < ActiveRecord::Migration[5.0]
  def change
    create_table :preys do |t|
      t.string :name
      t.string :type
      t.integer :weight

      t.timestamps
    end
  end
end
