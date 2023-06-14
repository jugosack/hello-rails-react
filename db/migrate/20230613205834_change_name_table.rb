class ChangeNameTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :messages, :api_v1_messages
  end
end
