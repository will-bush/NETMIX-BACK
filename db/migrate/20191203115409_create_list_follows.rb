class CreateListFollows < ActiveRecord::Migration[6.0]
  def change
    create_table :list_follows do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :list_id

      t.timestamps
    end
  end
end
