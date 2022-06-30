class Active < ApplicationRecord
  with_options presence: true do
    validates :step
  end

  belongs_to :user
end
