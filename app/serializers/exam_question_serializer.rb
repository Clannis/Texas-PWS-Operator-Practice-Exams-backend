class ExamQuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :a, :b, :c, :d, :e, :multiple_answers, :difficulty_rating, :category, :license, :field, :selected_answer, :correct, :correct_answer
end
