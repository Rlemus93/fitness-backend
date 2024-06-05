class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :workout_date
      t.string :workout_type
      t.integer :duration
      t.integer :calories_burned
      t.text :notes
      t.boolean :completed

      t.timestamps
    end
  end
end
