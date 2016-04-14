class AddTypeToProduct < ActiveRecord::Migration
  def change
    add_column :products, :producttype_id, :integer
  end
end
