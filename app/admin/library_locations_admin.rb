Trestle.resource(:library_locations) do
  menu do
    item :library_locations, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :name
    column :address
    column :established
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |library_location|
    text_field :name
    text_field :address
    text_field :established
  end

  search do |query|
    if query
      LibraryLocation.where("name ILIKE ?", "%#{query}%")
    else
      LibraryLocation.all
    end
  end
end
