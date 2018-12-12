class Experience < ApplicationRecord
  validates :title, :company, :intro, :body, presence: true
end
