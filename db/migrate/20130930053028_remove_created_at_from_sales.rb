class RemoveCreatedAtFromSales < ActiveRecord::Migration
  def change
    remove_column :sales, :created_at, :datetime
  end
end
