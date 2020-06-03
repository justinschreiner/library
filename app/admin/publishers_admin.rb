Trestle.resource(:publishers) do
  menu do
    item :publishers, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  
  table do
    column :id
    column :name
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |publisher|
    text_field :name
  end

  search do |query|
    if query
      Publisher.where("name ILIKE ?", "%#{query}%")
    else
      Publisher.all
    end
  end
end
