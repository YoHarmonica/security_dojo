class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
