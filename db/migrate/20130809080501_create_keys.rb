class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.integer :shop_id
      t.string :identifier

      t.timestamps
    end

    add_index :keys, :shop_id
    add_index :keys, :identifier, unique: true
  end
end
