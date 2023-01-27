# == Schema Information
#
# Table name: userform_fields
#
#  id             :integer          not null, primary key
#  field_type     :string
#  name           :string
#  hint           :string
#  default        :string
#  placeholder    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  userform_id    :integer
#  position       :integer
#  fieldable_id   :integer
#  fieldable_type :string
#
# Indexes
#
#  index_userform_fields_on_fieldable_type_and_fieldable_id  (fieldable_type,fieldable_id)
#  index_userform_fields_on_userform_id                      (userform_id)
#

class UserformField < ApplicationRecord
  belongs_to :userform
  validates :name, presence: true
  validates :field_type, presence: true
  acts_as_list scope: :userform
  belongs_to :fieldable, polymorphic: true
  before_validation :set_fieldable

  def set_fieldable      
    unless fieldable
      field = field_type.constantize.new
      field.save
      self.fieldable = field
    end
  end
end
