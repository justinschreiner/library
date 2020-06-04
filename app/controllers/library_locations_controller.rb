class LibraryLocationsController < ApplicationController
  def index
    @libraries = LibraryLocation.all
  end

  def show
    @library = LibraryLocation.find(params[:id])
  end
end
