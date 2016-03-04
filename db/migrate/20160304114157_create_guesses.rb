class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :first_try, null: false
      t.text :user_input, null: false

      t.references :round, null: false
      t.references :card, null: false

      t.timestamps null: false
    end
  end
end
