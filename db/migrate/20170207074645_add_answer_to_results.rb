class AddAnswerToResults < ActiveRecord::Migration
  def change
    add_column :results, :answer, :integer

  end
end
