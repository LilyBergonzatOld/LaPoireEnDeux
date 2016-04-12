class AddDescriptionToFarm < ActiveRecord::Migration
  def change
    add_column :farms, :description, :text
  end
end
