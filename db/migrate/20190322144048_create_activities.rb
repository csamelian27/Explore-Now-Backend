class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
