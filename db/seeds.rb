# db/seeds.rb

admin_email = 'josejojisku@gmail.com'
admin_password = '123456789'

# Create the admin user if it doesn't already exist
unless User.exists?(email: admin_email)
  User.create!(
    email: admin_email,
    password: admin_password,
    password_confirmation: admin_password,
    admin: true
  )
  puts "Admin user created with email: #{admin_email}"
else
  puts "Admin user already exists with email: #{admin_email}"
end
