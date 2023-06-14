class CreateApiV1Messages < ActiveRecord::Migration[7.0]
  def change
    create_table :api_v1_messages do |t|
      t.string :text

      t.timestamps
    end
  end
end
