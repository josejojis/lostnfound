class FoundReport < ApplicationRecord
  enum status: { lost: 'lost', found: 'found' }
  enum category: { 
    personal_items: 'personal_items', 
    clothing: 'clothing', 
    accessories: 'accessories', 
    electronics: 'electronics', 
    documents: 'documents', 
    books_stationery: 'books_stationery', 
    toys_games: 'toys_games',
    other: 'other' # Add 'other' category to handle additional cases
  }

  mount_uploader :image, ImageUploader
  validates_presence_of :image

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "date", "description", "id", "item_name", "location_found", "updated_at"]
  end
  belongs_to :user
  validates :phone_number, presence: true, length: { is: 10 }
end
