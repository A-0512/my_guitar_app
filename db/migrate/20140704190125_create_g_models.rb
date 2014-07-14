class CreateGModels < ActiveRecord::Migration
  def change
    create_table :g_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
