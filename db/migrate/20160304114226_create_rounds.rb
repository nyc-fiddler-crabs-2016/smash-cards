class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, index: true, null: false
      t.references :deck, index: true, null: false
      t.integer :first_try_count, default: 0
      t.integer :total_guesses, default: 0

      t.timestamps null: false
    end
  end
end
