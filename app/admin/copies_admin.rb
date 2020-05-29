Trestle.resource(:copies) do
  menu do
    item :copies, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |copy|
    book_select = Book.all
    select :book_id, book_select
    text_field :name
    check_box :checked_out
    condition_select = ["Excelent", "Good", "Poor", "Ruined"]
    select :condition, condition_select
  end
end
