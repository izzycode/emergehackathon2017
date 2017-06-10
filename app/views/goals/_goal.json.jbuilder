json.extract! goal, :id, :description, :is_complete?, :user_id, :created_at, :updated_at
json.url goal_url(goal, format: :json)
