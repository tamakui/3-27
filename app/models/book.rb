class Book < ApplicationRecord
    has_one_attached :profile_image
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :post_comments, dependent: :destroy
    
end
