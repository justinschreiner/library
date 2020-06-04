Trestle.resource(:copies) do
  menu do
    item :copies, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :book
    column :name
    column :library_location
    column :condition
    column :checked_out?, align: :center
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |copy|
    select :book_id, Book.all
    text_field :name
    select :library_location_id, LibraryLocation.all
    check_box :checked_out
    select :condition, ["Excelent", "Good", "Poor", "Ruined"]
  end
end
