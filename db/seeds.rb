# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
appartement = {name: "Appartement", address: "7 Boundary St, London E2 7JE", description: "chinese", price_per_night: 2000, number_of_guests: 3, image: "https://images.unsplash.com/photo-1464890100898-a385f744067f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"}
villa =  {name: "Villa East", address: "56A Shoreditch High St, London E1 6PQ", description: "japanese", price_per_night: 12430, number_of_guests:14, image:"https://images.unsplash.com/photo-1649276249201-c328a02996ed?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60"}
maison =  {name: "La Famille", address: "Euratehcnologies, Lebois Leblanc", description: "italian", price_per_night: 1234356, number_of_guests:5, image:"https://images.unsplash.com/photo-1529408632839-a54952c491e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZmxhdCUyMGludGVyaW9yfGVufDB8fDB8fHww&auto=format&fit=crop&w=900&q=60"}
chez_vincent =  {name: "Chez Vincent", address: "Zone commerciale Farman, 51100 Reims", description: "french", price_per_night: 900, number_of_guests:7, image:`https://media.istockphoto.com/id/1367117925/fr/photo/coin-tv-avec-mobilier-de-salon-luxueux-dans-un-intérieur-classique-avec-de-grandes-fenêtres.webp?b=1&s=170667a&w=0&k=20&c=Kujt2JJo7JuYWpEAFYZfhpT61zZpiJ39kQkMiYw1Urc=`}
istanbul =  {name: "Istambul", address: "156 rue des mouchards, 75005 Paris", description: "belgian", price_per_night: 6754, number_of_guests:9, image:"https://media.istockphoto.com/id/1297586166/fr/photo/photo-élégante-moderne-de-stock-de-cuisine.webp?b=1&s=170667a&w=0&k=20&c=LaJtacRMR_99E2QN7TkQsuF1gHYc7yUkMI5dTQhZHsE="}


[appartement, villa, maison, chez_vincent, istanbul].each do |attributes|
  restaurant = Flat.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
