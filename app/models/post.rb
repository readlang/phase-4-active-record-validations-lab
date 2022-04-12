class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }

    # validates :title, comparison: { other_than: "True Facts" }

    validates :title, exclusion: {in: ["True Facts"]}

end
