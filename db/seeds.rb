@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "5555555555")

puts "1 User created"

AdminUser.create(email: "admin@test.com", 
                password: "asdfasdf", 
                password_confirmation: "asdfasdf", 
                first_name: "Admin", 
                last_name: "Name",
                phone: "5555555555")

puts "Holy Fuck! CRITICAL ERROR!!!! ERASE EVERYTHING!"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "failing silently"