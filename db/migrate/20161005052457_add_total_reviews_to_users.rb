class AddTotalReviewsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :total_reviews, :string
  end
end
