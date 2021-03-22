class CreateNamevotes < ActiveRecord::Migration[6.0]
  def change
    create_table :namevotes do |t|
      t.integer :user_id
      t.integer :name_id
      t.timestamps
    end
  end
end
