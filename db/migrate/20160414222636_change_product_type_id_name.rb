class ChangeProductTypeIdName < ActiveRecord::Migration
  def change
    rename_column :products, :producttype_id, :product_type_id
  end
end
