class Questions

  attr_accessor :correct

  def initialize(current_player) #setting the initializer to the current_player
    @num_1 = rand(20) #@num_1 = random number between 0 and 20
    @num_2 = rand(20) #@num_2 = random number between 0 and 20
    @answer = @num_1 + @num_2 #@answer = two random numbers between 0 and 20 added together

    puts "#{current_player}: What does #{@num_1} plus #{@num_2} equal?" #this is the question that is asked
    ask_question
  end

  def ask_question # defining a method called ask_question

    @player_answer = gets.chomp #gets.chomp is the equivalent of process.argv, it's whatever the user inputs into the command line

    if @player_answer == @answer.to_s #if what the user inputs into the command line is equal to line 8 (as a string), run line 21 and 22
      puts "You got it!"
      @correct = true

    else #else run line 25 and 26
      puts "Wrong answer."
      @correct = false
   end
  end
end
