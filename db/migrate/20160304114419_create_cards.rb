class CreateCards < ActiveRecord::Migration
  def change
  	create_table :cards do |t|
  		t.string :word, null: false, unique: true
  		t.text :definition, null: false

  		t.timestamps null: false
  	end
  end
end
