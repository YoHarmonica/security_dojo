module Admin
  class ExaminationsController < ApplicationController
    def index
      @examinations = Examination.all
    end

    def show
      @examination = Examination.find(params[:id])
      @questions = @examination.questions
    end
  end
end