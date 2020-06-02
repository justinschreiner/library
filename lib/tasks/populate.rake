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
            subject = Subject.find(Faker::Number.between(from: 1, to: 7))
            publisher = Publisher.find(Faker::Number.between(from: 2, to: 104))
            description = Faker::Quote.singular_siegler
    
            Book.create!(title: title, price: price, subjects: subject, publisher: publisher, description: description)
          end
    end
    task :copies => :environment do
      # Magic goes here
    end
  end