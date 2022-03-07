class Questions  
  attr_accessor :number1, :number2, :answer

  def initialize()
    @number1 = rand(19)+1
    @number2 = rand(19)+1
    @answer
  end

  def generate_question
    @answer = @number1 + @number2
    "What does #{number1} plus #{number2} equal?"
  end

  def check_answer(user_answer)
    if (user_answer == @answer) 
      return true 
    end
    false
  end
end