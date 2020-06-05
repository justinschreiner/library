Trestle.resource(:subjects) do
  menu do
    item :subjects, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :name
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |subject|
    text_field :name
  end

  search do |query|
    if query
      Subject.where("name ILIKE ?", "%#{query}%")
    else
      Subject.all
    end
  end
end
