class CreateCardDecks < ActiveRecord::Migration
  def change
  	create_table :card_decks do |t|
  		t.integer :card_id, null: false
  		t.integer :deck_id, null: false

  		t.timestamps null: false
  	end
  end
end
