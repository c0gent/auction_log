class RemoveItemIdFromSales < ActiveRecord::Migration
  def change
    remove_column :sales, :item_id, :integer
  end
end
