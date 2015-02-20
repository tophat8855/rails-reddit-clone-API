class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :username
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
