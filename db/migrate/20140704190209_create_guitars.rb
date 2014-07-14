class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :name
      t.integer :model_id

      t.timestamps
    end
  end
end
