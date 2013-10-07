class RemoveUpdatedAtFromSales < ActiveRecord::Migration
  def change
    remove_column :sales, :updated_at, :datetime
  end
end
