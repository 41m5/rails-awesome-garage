class RenameColumnsInCarsAndReviewsAndFavourites < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :owners_id, :owner_id
    rename_column :reviews, :cars_id, :car_id
    rename_column :favourites, :cars_id, :car_id
  end
end
