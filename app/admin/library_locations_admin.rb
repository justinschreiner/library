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
    column :created_at, align: :center
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |library_location|
    text_field :name
    text_field :address
    text_field :established
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:library_location).permit(:name, ...)
  # end
end
