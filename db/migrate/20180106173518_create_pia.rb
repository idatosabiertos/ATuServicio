class CreatePia < ActiveRecord::Migration
  def change
    create_table :pia do |t|
      t.string :pid, null: false
      t.string :titulo
      t.string :cie_9
      t.string :informacion,
      t.string :normativa
      t.string :snomed
    end
    add_index "pia", ["pid"], name: "index_sites_on_pid", using: :btree  
  end
end
