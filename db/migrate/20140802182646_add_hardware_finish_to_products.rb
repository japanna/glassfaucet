class AddHardwareFinishToProducts < ActiveRecord::Migration
  def change
    add_column :products, :hardware_finish, :string
  end
end
