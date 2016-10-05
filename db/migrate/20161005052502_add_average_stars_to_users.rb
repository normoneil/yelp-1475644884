class AddAverageStarsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :average_stars, :string
  end
end
