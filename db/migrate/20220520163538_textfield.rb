class Textfield < ActiveRecord::Migration[7.0]
  def change
    create_table :textfields do |t|
      t.string :default
      t.string :placeholder
      t.boolean :required, default: false
      
      t.timestamps
    end
  end
end
