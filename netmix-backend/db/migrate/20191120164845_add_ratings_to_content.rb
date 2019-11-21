class AddRatingsToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :Ratings, :text, array: true, default: []
  end
end
