# == Schema Information
#
# Table name: farms
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  zipcode    :string
#  city       :string
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Farm < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :products

  def full_address
    "#{address} #{zipcode} #{city} FRANCE"
  end

  def to_s
    "#{name}"
  end
end
