module Admin
  class ExaminationsController < ApplicationController
    def index
      @examinations = Examination.all #Examinationテーブル(月一テスト一覧)のすべてのデータが取り出せる
    end

    def show
      @examination = Examination.find(params[:id])    #Examinationテーブルのidに紐付いた一つのカラムをとってくる(一ヶ月分の問題)
      @questions = @examination.questions #1レコードに紐付いているquestionsのデータ(問題一覧)　
    end
  end
end