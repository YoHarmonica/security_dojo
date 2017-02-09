# require 'factory_girl'
# Dir[Rails.root.join('spec/factories/*.rb')].each {|f| require f }
User.delete_all
Examination.delete_all
Question.delete_all
Trial.delete_all
Result.delete_all
@user = FactoryGirl.create(:user)
12.times do
  @exam = FactoryGirl.create(:examination)
  puts @exam.id
  @trial = FactoryGirl.create(:trial, examination_id: @exam.id, user_id: @user.id)
  10.times do
    @question = FactoryGirl.create(:question, examination_id: @exam.id)
    FactoryGirl.create(:result, trial_id: @trial.id, question_id: @question.id)
  end
end