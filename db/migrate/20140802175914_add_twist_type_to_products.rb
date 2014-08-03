class AddTwistTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :twist_type, :string
  end
end
