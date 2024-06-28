class RemoveTypeFromDevices < ActiveRecord::Migration[7.1]
  def change
    remove_column :devices, :type, :string
  end
end
