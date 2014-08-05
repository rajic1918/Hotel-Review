class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :HotelName
      t.string :comments

      t.timestamps
    end
  end
end
