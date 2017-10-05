class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :answer1
      t.string :answer2
      t.string :answer3

      t.timestamps
    end
  end
end
