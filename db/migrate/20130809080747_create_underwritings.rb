class CreateUnderwritings < ActiveRecord::Migration
  def change
    create_table :underwritings do |t|
      t.integer :shop_id
      t.integer :status

      t.timestamps
    end

    add_index :underwritings, :shop_id
    add_index :underwritings, :status
    add_index :underwritings, :created_at
  end
end
