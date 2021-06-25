class CreateComments < ActiveRecord::Migration[6.1]
  def self.up
    drop_table :comments
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :comments, [:post_id]
  end

  def self.down
    drop_table :comments
  end
end
