class Comment < ApplicationRecord
    validates :author, :title, :message, :user_id, presence: true


    belongs_to :pattern
    belongs_to :user
    
    # accepts_nested_attributes_for :patterns
    
    scope :ordered, -> {order('created_at ASC')}
    
    
end