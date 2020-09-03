class Pattern < ApplicationRecord
     validates :title, :author, :category, :difficulty, :description, :name, presence: true

     belong_to :user
     has_many :comments, dependent: :destroy
     accepts_nested_attributes_for :comments

     scope :crocheting, -> {where(category: "Crocheting")}
     scope :sewing, -> {where(category: "Sewing")}
     scope :knitting, -> {where(category: "Knitting")}
     scope :macrame, -> {where(category: "Macrame")}
     
     scope :easy, -> {where(difficulty: "Easy")}
     scope :intermediate, -> {where(difficulty: "Intermediate")}
     scope :advanced, -> {where(difficulty: "Advanced")}

     scope :ordered, -> {order('created_at ASC')}
     
end