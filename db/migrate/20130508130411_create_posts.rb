class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, :null => false, :limit => 100
      t.text    :post

      t.timestamps
    end
  end
end
