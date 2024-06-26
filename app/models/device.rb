class Device < ApplicationRecord
    has_many :user_device_mappings
end
