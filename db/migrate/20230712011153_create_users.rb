class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' # For PostgreSQL
    create_table :users, id: :uuid do |t|
      # t.uuid :id, primary_key: true
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
