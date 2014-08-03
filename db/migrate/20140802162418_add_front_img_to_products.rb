class AddFrontImgToProducts < ActiveRecord::Migration
  def change
    add_column :products, :front_img, :string
  end
end
