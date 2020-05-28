class Subject < ApplicationRecord
  has_and_belongs_to_many :books
  has_many :books
end
