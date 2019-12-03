class CreateUserFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :user_follows do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :following_id

      t.timestamps
    end
  end
end
