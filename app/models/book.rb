# frozen_string_literal: true

class Book < ApplicationRecord
  has_and_belongs_to_many :subjects
  belongs_to :publisher
  has_many :copies
  has_many :library_locations, through: :copies

  mount_uploader :cover, CoverUploader
end
