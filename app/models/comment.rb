class Comment < ApplicationRecord
    validates :author, :title, :message, :user_id, presence: true


    belongs_to :garden
    belongs_to :user
    
    # accepts_nested_attributes_for :gardens
    
    scope :ordered, -> {order('created_at ASC')}
    
    
end