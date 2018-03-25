class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.string :type
      t.text :description
      t.references :automated_test, index: true

      t.timestamps
    end
  end
end
