class Book < ApplicationRecord
  has_and_belongs_to_many :subject
  belongs_to :publisher
  has_many :copies
  has_many :library_locations, through: :copies
end
