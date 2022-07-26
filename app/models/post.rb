class Post < ApplicationRecord
  with_options presence: true do
    validates :image
  end

  has_one_attached :image
  belongs_to :user
end
