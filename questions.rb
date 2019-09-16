
class Questions
  attr_reader :question, :answer
  QUESTIONS = [
  {q: 'What does 5 plus 3 equal?',
  w: 8},
  {q: 'What does 25 minus 15 equal?',
  w: 10},
  {q: 'What does 3 plus 0 equal?',
  w: 3},
  {q: 'What does 20 plus 5 equal?',
  w: 25},
  {q: 'What does 10 / 10 equal?',
  w: 1}
]
  def initialize()
    ques_hash = QUESTIONS.sample
    @question = ques_hash[:q]
    @answer = ques_hash[:w]
  end
end