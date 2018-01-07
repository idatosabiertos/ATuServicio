class AddAncestryToPia < ActiveRecord::Migration
  def change
    add_column :pia, :ancestry, :string
    add_index :pia, :ancestry
  end
end
