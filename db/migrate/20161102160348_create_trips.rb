class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.integer :num_of_fish
      t.boolean :clientsHappy
      t.datetime :end
      t.integer :rating
      t.datetime :start
      t.text :summary
      t.references :user, foreign_key: true
      t.string :weather

      t.timestamps
    end
  end
end
