class CreateCardDecks < ActiveRecord::Migration
  def change
  	create_table :card_deck do |t|
  		t.integer :card_id, null: false
  		t.integer :deck_id, null: false

  		t.timestamps null: false
  	end
  end
end
