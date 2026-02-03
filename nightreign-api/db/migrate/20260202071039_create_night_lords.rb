class CreateNightLords < ActiveRecord::Migration[8.1]
  def change
    create_table :night_lords do |t|
      t.string :name, null: false
      t.string :expedition, null: false
      t.boolean :dlc, null: false, default: false
      t.timestamps
    end

    add_index :night_lords, :name, unique: true
  end
end
