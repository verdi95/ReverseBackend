class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :nameString
      t.integer :user_id
      t.timestamps
    end
  end
end
