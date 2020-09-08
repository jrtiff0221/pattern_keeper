class Pattern < ApplicationRecord
     validates :title, :author, :published_date, :category, :difficulty, :description, :name, :user_id, presence: true


     belongs_to :user
     has_many :comments, dependent: :destroy
     accepts_nested_attributes_for :comments

     scope :crocheting, -> {where(category: "Crocheting")}
     scope :knitting, -> {where(category: "Knitting")}
     scope :macrame, -> {where(category: "Macrame")}
     scope :sewing, -> {where(category: "Sewing")}

     scope :easy, -> {where(difficulty: "1 Easy")}
     scope :intermediate, -> {where(difficulty: "2 Intermediate")}
     scope :advanced, -> {where(difficulty: "3 Advanced")}
     
     scope :search_by_category, ->(search_by_category){where("category=?")}
     scope :ordered, -> {order('created_at ASC')}
     
end