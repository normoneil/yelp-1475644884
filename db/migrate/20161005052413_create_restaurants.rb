class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :neighborhood
      t.string :average_stars
      t.string :total_reviews
      t.string :price
      t.string :description
      t.string :cover_image

      t.timestamps

    end
  end
end
