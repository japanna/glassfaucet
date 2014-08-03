class AddSerialnoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :serialno, :string
  end
end
