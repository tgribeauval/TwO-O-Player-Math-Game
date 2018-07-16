require './player.rb'
require './questions.rb'


class Game  #defining a class named Game

  attr_accessor :playerturn

  def initialize
    @current_player = 'Player 1'

    @first_player = Player.new #creating a new player --> this sends us to player.rb
    @second_player = Player.new #creating a new player --> this sends us to player.rb

    @player_1_lives = "#{@first_player.lives}/3"
    @player_2_lives = "#{@second_player.lives}/3"

    @end = false

    until @end
      turn #sends us to line 21
    end

  end

  def turn #difining a new method turn

    puts '----- NEW TURN -----'
    ask_question = Questions.new(@current_player) #ask a new question -> sends us to file questions.rb


    if !ask_question.correct # if wrong, delete life
      wrong #sends us to line 52
    end


   #change current player
    if @current_player == 'Player 1'
      @current_player = 'Player 2'

    else @current_player == 'Player 2'
     @current_player = 'Player 1'

    end

    puts "P1: #{@player_1_lives} vs P2: #{@player_2_lives}"



  end

  def wrong

    if @current_player == 'Player 1' #if current player is Player 1
      @first_player.wrong #and his awnser is wrong
      @player_1_lives = "#{@first_player.lives}/3" #update his lives
      if @first_player.lives === 0 #if first_player lives is equal to 0,
        @end = true # set @end = true (meaning the game is over)
        puts '----- GAME OVER -----' #console.log this
      end
    else
      @second_player.wrong #if second_player is wrong
      @player_2_lives = "#{@second_player.lives}/3" #update his lives

      if @second_player.lives === 0 #if  second_player lives is equal to 0
        @end = true #same as line 58
        puts '----- GAME OVER -----' #same as line 59
      end
    end
  end
end

start = Game.new #creating new instance of class Game
