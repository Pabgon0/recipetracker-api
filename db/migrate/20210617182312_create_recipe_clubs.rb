class CreateRecipeClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_clubs do |t|
      t.string :name

      t.timestamps
    end
  end
end
