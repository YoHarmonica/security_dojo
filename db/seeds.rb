# require 'factory_girl'
# Dir[Rails.root.join('spec/factories/*.rb')].each {|f| require f }
User.delete_all
Examination.delete_all
FactoryGirl.create(:user)
12.times do
  FactoryGirl.create(:examination)
end