class Book < ApplicationRecord
  has_and_belongs_to_many :subject
  belongs_to :publisher
end
