User.create!([
  {email: "jpcasper82@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-05-23 23:20:30", last_sign_in_at: "2016-05-22 19:55:48", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])

puts "user data created"

Category.create!([
  {name: "Fire Tools"},
  {name: "Blades and Knives"},
  {name: "Insect Repellents"}
])

puts "category data created"


Order.create!([
  {user_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 2, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 2, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 2, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 7, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 6, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil, supply_id: nil},
  {user_id: 1, quantity: 2, subtotal: 90.0, tax: 4.05, total: 94.05, supply_id: nil},
  {user_id: 1, quantity: 3, subtotal: 150.0, tax: 4.5, total: 154.5, supply_id: nil},
  {user_id: 1, quantity: 3, subtotal: 150.0, tax: 4.5, total: 154.5, supply_id: nil},
  {user_id: 1, quantity: 3, subtotal: 150.0, tax: 4.5, total: 154.5, supply_id: nil},
  {user_id: 1, quantity: 3, subtotal: 150.0, tax: 4.5, total: 154.5, supply_id: nil},
  {user_id: 1, quantity: 2, subtotal: 90.0, tax: 4.05, total: 94.05, supply_id: nil},
  {user_id: 1, quantity: 5, subtotal: 50.0, tax: 0.9, total: 50.9, supply_id: nil}
])

puts "order data created"

Supplier.create!([
  {name: "Campers Inc.", email: "info@campersinc.com", phone: "(800) 588.2300"},
  {name: "Naked and Afraid Suppliers", email: "info@nakedandafraid.com", phone: "(800) 222.2222"},
  {name: "CampingStuff Inc", email: "info@campingstuff.com", phone: "(800) 777.9311"}
])

puts "supplier data created"

Supply.create!([
  {name: "Fire Starter", price: "20.0", description: "As the name suggests, it starts fires. Mainly for use in the wilderness or may come in handy if you're ever on Naked and Afraid", stock: "In-Stock", supplier_id: 2},
  {name: "Machete", price: "200.0", description: "This is a handy tool to use if you're stuck in the wilderness. You can cut down trees and whatnot. Also extremely useful if you're ever on Naked and Afraid", stock: "In-Stock", supplier_id: 3},
  {name: "Mosquito Net", price: "50.0", description: "This is an item that would come in handy if you're ever stuck in the wilderness. It keeps mosquitos off of you. Also nice to have if you're ever on Naked and Afraid", stock: "Out-of-Stock", supplier_id: 1},
  {name: "Canteen", price: "30.0", description: "This is a good product to have in the wilderness. You can put water in it and drink from it. Also nice to have if you're ever on Naked and Afraid.", stock: "Out-of-Stock", supplier_id: 3},
  {name: "Bow Drill", price: "45.0", description: "This is a bow drill. If you know what you're doing you can start a fire. However, if you're going to be on Naked and Afraid I would suggest buying the fire starter.", stock: "Out-of-Stock", supplier_id: 2},
  {name: "Fire Wood", price: "10.0", description: "It's dry so it'll work", stock: "Out-of-Stock", supplier_id: 3}
])
puts "supply data created"
