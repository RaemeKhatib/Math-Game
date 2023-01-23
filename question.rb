class Question 

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
    @question = "What does #{@number1} plus #{@number2} equal?"
    @answer = @number1 + @number2
  end

end
