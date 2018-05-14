class CreateAlienPowers < ActiveRecord::Migration[5.1]
  def change
    create_table :alien_powers do |t|
      t.references :alien, foreign_key: true
      t.references :power, foreign_key: true

      t.timestamps
    end
  end
end
