class AddMajorDiameterToProducts < ActiveRecord::Migration
  def change
    add_column :products, :major_diameter, :float
  end
end
