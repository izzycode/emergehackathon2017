namespace :goal do

  task :check => :environment do
    begin

      #find all goals that are not complete. Find their users, and charge them $10 for each incomplete goal using the visa api
      # DateTime.yesterday

      incomplete_goals = Goal.where(is_complete?: false, goal_time: Date.yesterday..Date.today)

      incomplete_goals.each do |incomplete_goal|
        ig_user = incomplete_goal.user.first
        #ig_user.charge($10)
      end


    end #begin
  end #task
end #goals
