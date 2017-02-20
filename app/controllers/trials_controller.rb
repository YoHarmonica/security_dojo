class TrialsController < ApplicationController
  def new
    @examination = Examination.find(params[:examination_id])
    @trial = Trial.new examination_id: params[:examination_id], user_id: current_user.id
    @examination.questions.each do |question|
      @trial.results << Result.new(question_id: question.id)
    end
  end

  def create
    @trial = Trial.new examination_id: params[:examination_id], user_id: current_user.id
    @trial.save
  end
end
