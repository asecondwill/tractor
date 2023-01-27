# == Schema Information
#
# Table name: fields
#
#  id             :integer          not null, primary key
#  name           :string
#  fieldable_id   :integer
#  fieldable_type :string
#  ancestry       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_fields_on_ancestry  (ancestry)
#

require "test_helper"

class FieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
