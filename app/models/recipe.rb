class Recipe < ApplicationRecord
    has_one_attached :poster
    belongs_to :user
    belongs_to :recipe_club
end
