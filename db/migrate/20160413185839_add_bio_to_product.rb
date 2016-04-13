class AddBioToProduct < ActiveRecord::Migration
  def change
    add_column :products, :bio, :integer
  end
end
