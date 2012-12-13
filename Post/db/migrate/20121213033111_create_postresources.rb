class CreatePostresources < ActiveRecord::Migration
  def change
    create_table :postresources do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
