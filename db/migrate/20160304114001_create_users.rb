class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, limit:20, unique: true
      t.string :password_hash, null:false
      t.string :description
      t.timestamps :null, false
    end
  end
end
