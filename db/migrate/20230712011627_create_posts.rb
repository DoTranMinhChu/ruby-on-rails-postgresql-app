class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' # For PostgreSQL
    create_table :posts, id: :uuid do |t|
      # t.uuid :id, primary_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
