class Book < ApplicationRecord
  belongs_to :subject
  belongs_to :publisher
end
