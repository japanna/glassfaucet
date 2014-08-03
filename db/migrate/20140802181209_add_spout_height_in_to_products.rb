class AddSpoutHeightInToProducts < ActiveRecord::Migration
  def change
    add_column :products, :spout_height_in, :float
  end
end
