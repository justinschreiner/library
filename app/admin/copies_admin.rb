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
    column :checked_out?, align: :center do |copy|
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
    select :book_id, Book.all
    text_field :name
    select :library_location_id, LibraryLocation.all
    check_box :checked_out
    condition_select = ["Excelent", "Good", "Poor", "Ruined"]
    select :condition, condition_select
  end
end
