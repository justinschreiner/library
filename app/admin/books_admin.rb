Trestle.resource(:books) do
  menu do
    item :books, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :id
    column :title
    column :subjects, ->(book) { book.subjects.map(&:itself) }
    column :publisher_id, ->(book) { book.publisher }
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|
    text_field :title
    unless book.cover.file.nil?
      concat "Current Cover: "
      concat(image_tag(book.cover.url, size: "100x150"))
    end
    file_field :cover
    text_field :price
    select :subject_ids, Subject.all, {}, multiple: true
    select :publisher_id, Publisher.all
    text_field :description
  end

  # Search books
  #
  search do |query|
    if query
      Book.where("title ILIKE ?", "%#{query}%")
    else
      Book.all
    end
  end
end
