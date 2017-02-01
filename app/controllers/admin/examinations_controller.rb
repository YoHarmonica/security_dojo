module Admin
  class ExaminationsController < ApplicationController
    def index
      @examinations = Examination.all
    end
    def show
    end
  end
end