class TrialsController < ApplicationController
  def new
    @examination = Examination.find(params[:examination_id])
    @trial = Trial.new examination_id: params[:examination_id], user_id: current_user.id
    @examination.questions.each do |question|
      @trial.results << Result.new(question_id: question.id)
    end
  end

  def create
    @examination = Examination.find(params[:examination_id])
    @trial = Trial.new(trial_params)
    @trial.user_id = current_user.id
    @trial.examination_id = @examination.id
    if @trial.valid?
      if @trial.pass?
        @trial.save
        redirect_to examinations_path, notice: "#{@trial.score}点、合格です！"
      else
        flash.now[:alert] = "不合格です"
        render :new
      end
    else
      flash.now[:alert] = "選択されてない問題があります"
      render :new
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def trial_params
      params.require(:trial).permit(results_attributes: [ :answer, :question_id ])
    end
end
