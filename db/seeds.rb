puts "🌱 Seeding spices..."

User.destroy_all
Message.destroy_all
Admin.destroy_all

puts "creating admin!"
Admin.create!(name: "Admin", lastName: "Admin", contact: "admin@admin.com", login: "adminAdmin", password: "Admin123")


bob = User.create(name: "Bob", lastName: "Marly", contact: "bobm@gmail.com", login: "adminAdmin", password: "Admin123")
john = User.create(name: "John", lastName: "Silverfish", contact: "johnSilvers@gmail.com", login: "JohnSilverfish", password: "11")
evan = User.create(name: "Evan", lastName: "Gel", contact: "eg@gmail.com", login: "Evangel", password: "1234")
# Seed your database here

Message.create!(body: "Hello", owner: bob.name, sent_at: Time.now.strftime("%I:%M %p"), user_id: bob.id, admin_id:Admin.first.id)
Message.create!(body: "Hello", owner: john.name, sent_at: Time.now.strftime("%I:%M %p"), user_id: john.id, admin_id:Admin.first.id)
Message.create!(body: "Whats up?", owner: bob.name, sent_at: Time.now.strftime("%I:%M %p"), user_id: bob.id, admin_id:Admin.first.id)
Message.create!(body: "Hello", owner: evan.name, sent_at: Time.now.strftime("%I:%M %p"), user_id: evan.id, admin_id:Admin.first.id)



puts "✅ Done seeding!"



