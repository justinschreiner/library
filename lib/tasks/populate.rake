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
          subject = Faker::Number.between(from: 1, to: 7)
          publisher = Publisher.find(Faker::Number.between(from: 2, to: 104))
          description = Faker::Quote.singular_siegler
  
          Book.create!(title: title, price: price, subject_ids: subject, publisher: publisher, description: description)

          # Create 5 copies for each book
          5.times do |i|
            book_id = n
            name = Faker::Alphanumeric.alphanumeric(number: 10)
            3.times do |j|
              library_location_id = i
            end 
    
            Copy.create!(book_id: book_id, name: name, library_location_id: library_location_id)
          end
        end
    end

  end