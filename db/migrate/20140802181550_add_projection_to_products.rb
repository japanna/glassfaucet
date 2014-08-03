class AddProjectionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :projection, :float
  end
end
