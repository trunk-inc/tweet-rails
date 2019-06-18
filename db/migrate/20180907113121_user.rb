class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :account, unique: true, index: true, limit: 128
      t.string :username
      t.string :introduction
      t.text :icon_url
      t.text :cover_url

      t.timestamps null: false
    end
  end
end
