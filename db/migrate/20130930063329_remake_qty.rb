class RemakeQty < ActiveRecord::Migration
  def change
  	remove_column :sales, :qty
  	add_column :sales, :qty, :int, default: '1', null: false
  end
end
