class CreateBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :banks do |t|
      t.string :title
      t.integer :goal
      t.integer :user_id

      t.timestamps
    end
  end
end
