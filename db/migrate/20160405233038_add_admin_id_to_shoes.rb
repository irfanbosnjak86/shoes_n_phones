class AddAdminIdToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :admin_id, :integer
    add_index :shoes, :admin_id
  end
end
