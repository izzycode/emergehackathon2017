class RemoveAvatarFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :avatar_file_name
    remove_column :users, :avatar_updated_at
    remove_column :users, :avatar_file_size
    remove_column :users, :avatar_content_type
  end
end
