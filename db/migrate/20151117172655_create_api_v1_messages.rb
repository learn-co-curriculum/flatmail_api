class CreateApiV1Messages < ActiveRecord::Migration
  def change
    create_table :api_v1_messages do |t|
      t.string :to
      t.string :from
      t.string :body
      t.boolean :starred
      t.belongs_to :api_v1_label, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
