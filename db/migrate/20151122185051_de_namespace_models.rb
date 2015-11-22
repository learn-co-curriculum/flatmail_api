class DeNamespaceModels < ActiveRecord::Migration
  def change
    drop_table :api_v1_messages
    drop_table :api_v1_labels
    create_table :labels do |t|
      t.string :name

      t.timestamps null: false
    end
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :body
      t.boolean :starred, default: false
      t.belongs_to :label, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
