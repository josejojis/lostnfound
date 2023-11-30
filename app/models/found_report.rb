class FoundReport < ApplicationRecord

        mount_uploader :image, ImageUploader

        validates_presence_of :image

        def self.ransackable_attributes(auth_object = nil)
            ["created_at", "date", "description", "id", "item_name", "location_found", "updated_at"]
        end
      
end
