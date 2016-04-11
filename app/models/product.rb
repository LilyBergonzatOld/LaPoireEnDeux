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

  def to_s
    "#{name}"
  end
end
