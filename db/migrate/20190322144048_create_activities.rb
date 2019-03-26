class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.integer :rating
      t.string :display_phone
      t.string :term
      t.string :location

      t.timestamps
    end
  end
end
