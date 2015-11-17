class CreateApiV1Labels < ActiveRecord::Migration
  def change
    create_table :api_v1_labels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
