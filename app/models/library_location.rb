class LibraryLocation < ApplicationRecord
    has_many :books, through: :copies
end
