# Default admin
# User.destroy_all

User.create(email: "admin@example.com", password: "12345678", role: "Admin", name: "root")
puts "Default admin created!"

# Default user

User.create(email: "yuyu@example.com", password: "123456", name: "yuyu")
puts "Default user created!"
