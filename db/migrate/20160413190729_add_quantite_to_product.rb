class AddQuantiteToProduct < ActiveRecord::Migration
  def change
    add_column :products, :quantite, :string
  end
end
