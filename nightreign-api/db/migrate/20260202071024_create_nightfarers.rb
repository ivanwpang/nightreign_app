class CreateNightfarers < ActiveRecord::Migration[8.1]
  def change
    create_table :nightfarers do |t|
      t.string  :name, null: false
      t.boolean :dlc, null: false, default: false
      t.boolean :unlockable, null: false, default: false
      t.timestamps
    end

    add_index :nightfarers, :name, unique: true
  end
end
