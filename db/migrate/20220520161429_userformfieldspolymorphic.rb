class Userformfieldspolymorphic < ActiveRecord::Migration[7.0]
  def change
    add_column :userform_fields, :fieldable_id, :int
    add_column :userform_fields, :fieldable_type, :string
  end
end
