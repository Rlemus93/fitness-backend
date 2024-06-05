class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.references :user, null: false, foreign_key: true
      t.date :meal_date
      t.string :meal_type
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fats
      t.text :notes
      t.boolean :healthy

      t.timestamps
    end
  end
end
