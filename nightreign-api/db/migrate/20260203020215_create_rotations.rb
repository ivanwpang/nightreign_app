class CreateRotations < ActiveRecord::Migration[8.1]
  def change
    create_table :rotations do |t|
      t.datetime :effective_at, null: false
      t.timestamps
    end

    add_index :rotations, :effective_at, unique: true
  end
end