# require 'factory_girl'
# Dir[Rails.root.join('spec/factories/*.rb')].each {|f| require f }
User.delete_all
Examination.delete_all
Question.delete_all
FactoryGirl.create(:user)
12.times do
  @exam = FactoryGirl.create(:examination)
  puts @exam.id
  10.times do
    FactoryGirl.create(:question, examination_id: @exam.id)
  end
end