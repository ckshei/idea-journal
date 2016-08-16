class UpdateTable < ActiveRecord::Migration
  def change
  	remove_column :ideas, :user_id
  	add_column :ideas, :list_id
  end

  def change
  	create_table :lists do |t|
  		t.string :name
  		t.integer :user_id
  		t.boolean :private
  	end
  end
end
