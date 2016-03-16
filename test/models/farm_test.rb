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

require 'test_helper'

class FarmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
