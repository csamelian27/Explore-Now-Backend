class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :current_time
      t.string :set_minutes
      t.integer :user_id
      t.integer :activity_id
      t.boolean :worth_it
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
