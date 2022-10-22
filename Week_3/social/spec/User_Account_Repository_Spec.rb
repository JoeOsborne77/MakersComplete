# require_relative "../lib/User_Account_Repository.rb"
# require_relative "../lib/User_Account.rb"


# RSpec.describe User_Account_Repository do

#   def reset_user_table
#     seed_sql = File.read('spec/socials_seeds.sql')
#     connection = PG.connect({ host: '127.0.0.1', dbname: 'socials' })
#     connection.exec(seed_sql)
#   end

#     before(:each) do 
#       reset_user_table
#     end

#   it "shows email addresses" do
#     uar = User_Account_Repository.new
#     all_users = uar.all
#     expect(all_users[2].email_address).to eq 'ginag84@gmail.com'
#     expect(all_users[1].email_address).to eq 'johntyp@gmail.com'
#   end

#   it "shows usernames addresses" do
#     uar = User_Account_Repository.new
#     all_users = uar.all
#     expect(all_users[1].username).to eq 'johnty82'
#     expect(all_users[0].username).to eq 'PeterB7'
#   end

#   it "shows ids" do
#     uar = User_Account_Repository.new
#     all_users = uar.all
#     expect(all_users[2].id).to eq '3'
#     expect(all_users[0].id).to eq '1'
#   end

#   it "finds user by id" do
#     repo = User_Account_Repository.new
#     user = repo.find(2)
#     expect(user.username).to eq ('johnty82')
#   end

#   it "finds user by id" do
#     repo = User_Account_Repository.new
#     user = repo.find(1)
#     expect(user.id).to eq ('1')
#   end

#   it "creates user" do
#     repo = User_Account_Repository.new
#     new_user = User_Account.new
#     new_user.id = 4
#     new_user.email_address = 'fatboy90@hotmail.com'
#     new_user.username = 'Puddle Glum'
#     repo.create(new_user)
#     all_users = repo.all
#     expect(all_users[3].email_address).to eq('fatboy90@hotmail.com')
#   end

#   it "deletes user" do
#     repo = User_Account_Repository.new
#     delete_id = 1
#     repo.delete(delete_id)
#     all_users = repo.all
#     expect(all_users.length).to eq 2
#   end
# end
