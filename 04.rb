#Building a Quiz Game

class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt=prompt
    @answer=answer
  end
end

p1= "What color are Apples?\n(a) Red\n(b) Green\n(c) Blue\n(d)Orange"
p2= "What color are Bananas?\n(a) Yellow\n(b) Green\n(c) Blue\n(d) Orange"
p3= "What color are Pearls?\n(a) Red\n(b) Green\n(c) Blue\n(d) Orange"
p4= "What color are Orange?\n(a) Red\n(b) Green\n(c) Blue\n (d) Orange"

questions= [
  Question.new(p1, "a"),
  Question.new(p2, "a"),
  Question.new(p3, "b"),
  Question.new(p4, "d")
]

def run_test(questions)
  answer=""
  score=0
  for question in questions 
    puts question.prompt
    answer=gets.chomp()
    if answer == question.answer
      score+=1
    end
  end
  puts "\nYour Total Score: "+score.to_s+"/"+questions.length().to_s)
end 

run_test(questions)
