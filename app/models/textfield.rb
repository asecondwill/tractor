class Textfield < ApplicationRecord
  has_one :userform_field, as: :fieldable
end
