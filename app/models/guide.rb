class Guide < ApplicationRecord
  validates :topic, presence: true, uniqueness: true
  validates :steps, presence: true
end