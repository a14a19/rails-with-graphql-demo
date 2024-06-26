class CreateUserDeviceMappings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_device_mappings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :device, null: false, foreign_key: true

      t.timestamps
    end
  end
end
