class TrialsController < ApplicationController
  def new
    @examination = Examination.find(params[:examination_id])
    @trial = Trial.new examination_id: params[:examination_id], user_id: current_user.id
    @examination.questions.each do |question|
      @trial.results << Result.new(question_id: question.id)
    end
  end

  def create
    @trial = Trial.new(trial_params)
    @trial.user_id = current_user.id
    @trial.save
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_params
      params.require(:trial).permit(results_attributes: [ :answer ])
    end
end
