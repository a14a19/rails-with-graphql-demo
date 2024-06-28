class Device < ApplicationRecord
    has_many :user_device_mappings
    has_many :users, through: :user_device_mappings
end
