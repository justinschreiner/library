class Copy < ApplicationRecord
    belongs_to :book
    belongs_to :library_location
end
