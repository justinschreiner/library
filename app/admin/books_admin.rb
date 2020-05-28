Trestle.resource(:books) do
  menu do
    item :books, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :id
  #   column :title
  #   column :price
  #   column @subject.name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|
    text_field :title
    text_field :price
    subject_select = Subject.all
    select :subject_id, subject_select
    publisher_select = Publisher.all
    select :publisher_id, publisher_select
    text_field :description
  end

end
