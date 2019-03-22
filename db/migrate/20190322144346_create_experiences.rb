class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.datetime :date
      t.integer :user_id
      t.integer :activity_id
      t.boolean :worth_it?

      t.timestamps
    end
  end
end
