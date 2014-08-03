class AddSideImgToProducts < ActiveRecord::Migration
  def change
    add_column :products, :side_img, :string
  end
end
