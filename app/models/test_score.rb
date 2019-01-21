class TestScore < ApplicationRecord
  belongs_to :test_result
  belongs_to :test_skill
end
