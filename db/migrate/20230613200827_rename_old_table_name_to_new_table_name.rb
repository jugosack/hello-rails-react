class RenameOldTableNameToNewTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :api_v1_messages, :messages
  end
end
