class AdjustListid < ActiveRecord::Migration
  def change
    rename_column :ideas, :user_id, :list_id
  end
end
