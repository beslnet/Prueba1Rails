class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :hero
      t.string :email

      t.timestamps null: false
    end
  end
end
