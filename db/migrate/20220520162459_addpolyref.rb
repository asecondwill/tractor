class Addpolyref < ActiveRecord::Migration[7.0]
  def change
      add_index :userform_fields, [:fieldable_type, :fieldable_id]
  end
end
