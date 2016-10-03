class ChangeGoalToBank < ActiveRecord::Migration[5.0]
  def up
    change_column :banks, :goal, :integer, default: 0
  end

  def down
    change_column :banks, :goal, :integer
  end
end
