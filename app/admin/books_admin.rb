Trestle.resource(:books) do
  menu do
    item :books, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :title
    column :subject_id, -> (book) { Subject.find(book.subject_id).name }
    column :publisher_id, -> (book) { book.publisher.name }
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|
    text_field :title
    text_field :price
    select :subject_ids, Subject.all
    select :publisher_id, Publisher.all
    text_field :description
  end

end
