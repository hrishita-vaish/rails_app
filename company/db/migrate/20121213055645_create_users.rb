class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :id
	  t.string :name
      t.string :location
      t.string :hobbies

      t.timestamps
    end
  end
end
