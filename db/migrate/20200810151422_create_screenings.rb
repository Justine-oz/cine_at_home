class CreateScreenings < ActiveRecord::Migration[6.0]
  def change
    create_table :screenings do |t|
      t.string :location
      t.string :film
      t.integer :number_of_guests
      t.integer :price
      t.text :description
      t.string :datetime
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
