puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
wagamama = { name: "Wagamama", address: "7 Boundary St, London E2 7JE", phone_number: "07652836476", category: "japanese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "07364758364", category: "italian"   }
imperial_china =  { name: "Imperial China", address: "25a Lisle Street, London WC2H 7BA", phone_number: "07342736453", category: "chinese" }
belgo =  { name: "Belgo", address: "1 Kings Cross Road, London WC1X 9HX", phone_number: "07263745263", category: "belgian" }
prezzo =  { name: "Prezzo", address: "63 Queen's Road, Essex IG9 5BU", phone_number: "07253647592", category: "italian" }

[ wagamama, pizza_east, imperial_china, belgo, prezzo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
