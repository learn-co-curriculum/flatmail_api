class AddArchivedToApiV1Message < ActiveRecord::Migration
  def change
    add_column :api_v1_messages, :archived, :boolean, default: false
  end
end
