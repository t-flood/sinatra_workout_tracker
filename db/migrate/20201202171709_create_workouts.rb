class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :exercise
      t.integer :user_id

      t.timestamps
    end
  end
end
