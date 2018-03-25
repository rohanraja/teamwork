class CreateAutomatedTests < ActiveRecord::Migration
  def change
    create_table :automated_tests do |t|
      t.string :title
      t.string :type
      t.text :description
      t.references :component, index: true

      t.timestamps
    end
  end
end
