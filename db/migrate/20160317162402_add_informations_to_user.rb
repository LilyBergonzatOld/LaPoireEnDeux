class AddInformationsToUser < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
  end
end
