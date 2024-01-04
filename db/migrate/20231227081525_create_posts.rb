class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :caption
      t.string :image
      t.string :location

      t.timestamps
    end
  end
end
