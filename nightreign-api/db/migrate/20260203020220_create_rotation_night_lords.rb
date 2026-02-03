class CreateRotationNightLords < ActiveRecord::Migration[8.1]
  def change
    create_table :rotation_night_lords do |t|
      t.references :rotation, null: false, foreign_key: true
      t.references :night_lord, null: false, foreign_key: true
      t.timestamps
    end

    add_index :rotation_night_lords,
              [:rotation_id, :night_lord_id],
              unique: true,
              name: "index_rotation_night_lords_unique"
  end
end