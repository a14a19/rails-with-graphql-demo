class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.string :type
      t.string :os
      t.string :version

      t.timestamps
    end
  end
end
