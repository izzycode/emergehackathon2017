class AddGoalTimeColumnToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :goal_time, :datetime
  end
end
