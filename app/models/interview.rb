class Interview < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6 }
end
