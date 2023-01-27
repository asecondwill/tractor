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

class Field < ApplicationRecord
  has_ancestry
  belongs_to :fieldable, polymorphic: true
end
