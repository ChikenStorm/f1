class CreatePilotes < ActiveRecord::Migration[7.1]
  def change
    create_table :pilotes do |t|
      t.string :nom
      t.string :prenom
      t.string :age
      t.string :team
      t.date :first_race
      t.string :title
      t.boolean :actually_driver
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
