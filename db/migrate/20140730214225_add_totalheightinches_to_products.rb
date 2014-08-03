class AddTotalheightinchesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :totalheightinches, :float
  end
end
