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
    column :checked_out, align: :center do |copy|
      if copy.checked_out?
        status_tag(icon("fa fa-check"), :success)
      else
        status_tag(" ")
      end 
    end
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |copy|
    book_select = Book.all
    select :book_id, book_select
    text_field :name
    library_select = LibraryLocation.all
    select :library_location_id, library_select
    check_box :checked_out
    condition_select = ["Excelent", "Good", "Poor", "Ruined"]
    select :condition, condition_select
  end
end
