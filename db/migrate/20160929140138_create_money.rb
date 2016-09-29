class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
      t.integer :money1, default: 0
      t.integer :money5, default: 0
      t.integer :money10, default: 0
      t.integer :money50, default: 0
      t.integer :money100, default: 0
      t.integer :money500, default: 0
      t.integer :money1000, default: 0
      t.integer :money2000, default: 0
      t.integer :money5000, default: 0
      t.integer :money10000, default: 0
      t.integer :bank_id

      t.timestamps
    end
  end
end
