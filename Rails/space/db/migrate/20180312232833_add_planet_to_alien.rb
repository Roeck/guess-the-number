class AddPlanetToAlien < ActiveRecord::Migration[5.1]
  def change
    add_reference :aliens, :planet, foreign_key: true
  end
end
