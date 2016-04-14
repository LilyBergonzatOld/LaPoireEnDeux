# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string
#  price      :float
#  farm_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :farm
  belongs_to :product_type, class_name: 'ProductType'

  def to_s
    "#{name}"
  end
end
