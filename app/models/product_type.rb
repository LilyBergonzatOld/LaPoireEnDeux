class ProductType < ActiveRecord::Base
  has_many :products, foreign_key: 'producttype_id'

  def to_s
    "#{name}"
  end
end
