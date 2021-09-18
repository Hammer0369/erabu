class Gropu < ApplicationRecord
  validates :group_name, presence: true

  belongs_to :user
end
