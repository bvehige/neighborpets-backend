class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.string :description
      t.string :owner
      t.string :address
      t.references :neighborhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
