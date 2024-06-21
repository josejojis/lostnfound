# db/seeds.rb

# Create an admin user
admin = User.find_or_create_by!(email: 'josejojis@gmail.com') do |user|
  user.password = 'password'
  user.password_confirmation = 'password'
  user.admin = true # Assuming you have a boolean admin field
end

puts "Admin user created with email: #{admin.email}"
