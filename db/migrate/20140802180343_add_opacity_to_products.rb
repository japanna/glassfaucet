class AddOpacityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :opacity, :string
  end
end
