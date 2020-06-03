namespace :populate do
    task :publishers => :environment do
        100.times do |n|
            name = Faker::Name.name
    
            Publisher.create!(name: name)
          end
    end

    task :books => :environment do
      500.times do |n|
          title = Faker::Book.title
          price = Faker::Number.decimal(l_digits: 3, r_digits: 2)
          subject = Faker::Number.between(from: 1, to: 5)
          publisher = Publisher.find(Faker::Number.between(from: 2, to: 104))
          description = Faker::Quote.singular_siegler
  
          Book.create!(title: title, price: price, subject_ids: subject, publisher: publisher, description: description)

          # Create 5 copies for each book
          3.times do |i|
            book_id = n+25
            name = Faker::Alphanumeric.alphanumeric(number: 10)
            library_location_id = i+1
            checked_out = Faker::Boolean
            condition_arr = ["Excelent", "Good", "Poor", "Ruined"]
            condition = condition_arr[Faker::Number.between(from: 0, to: 3)]
    
            Copy.create!(book_id: book_id, name: name, library_location_id: library_location_id, checked_out: checked_out, condition: condition)
          end
        end
    end

  end