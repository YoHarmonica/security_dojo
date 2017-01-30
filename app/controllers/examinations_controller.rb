class ExaminationsController < ApplicationController
  def index
    @examinations = Examination.all
  end
end
