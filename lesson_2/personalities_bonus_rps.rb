class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?) ||
      (rock? && other_move.lizard?) ||
      (paper? && other_move.spock?) ||
      (scissors? && other_move.lizard?) ||
      (spock? && other_move.scissors?) ||
      (lizard? && other_move.paper?) ||
      (spock? && other_move.rock?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?) ||
      (lizard? && other_move.rock?) ||
      (spock? && other_move.paper?) ||
      (lizard? && other_move.scissors?) ||
      (scissors? && other_move.spock?) ||
      (paper? && other_move.lizard?) ||
      (rock? && other_move.spock?)
  end

  def to_s
    @value
  end
end

class Rock < Move
  def initialize
    @value = 'rock'
  end

  def rock?
    @value == 'rock'
  end
end

class Paper < Move
  def initialize
    @value = 'paper'
  end

  def paper?
    @value == 'paper'
  end
end

class Scissors < Move
  def initialize
    @value = 'scissors'
  end

  def scissors?
    @value == 'scissors'
  end
end

class Lizard < Move
  def initialize
    @value = 'lizard'
  end

  def lizard?
    @value == 'lizard'
  end
end

class Spock < Move
  def initialize
    @value = 'spock'
  end

  def spock?
    @value == 'spock'
  end
end

class Player
  attr_accessor :move, :name, :move_history

  def initialize
    set_name
    @move_history = []
  end

  def choose_class(choice)
    case choice
    when 'rock' then Rock.new
    when 'scissors' then Scissors.new
    when 'paper' then Paper.new
    when 'lizard' then Lizard.new
    when 'spock' then Spock.new
    end
  end

  def update_move_history(current_move)
    @move_history << current_move
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock:"
      choice = gets.chomp.downcase
      break if Move::VALUES.include? choice
      puts 'Sorry, invalid choice.'
    end
    self.move = choose_class(choice)
    self.move = self.move.to_s
    update_move_history(self.move)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie'].sample
  end

  def choose
    case self.name
    when 'R2D2'
      self.move = Rock.new
    when 'Hal'
      self.move = [Rock.new, Scissors.new, Scissors.new, Scissors.new, Spock.new].sample.to_s
    when 'Chappie'
      self.move = [Paper.new, Lizard.new, Spock.new].sample.to_s
    end
    update_move_history(self.move)
  end
end

class RPSGame
  attr_accessor :human, :computer, :score
  def initialize
    @human = Human.new
    @computer = Computer.new
    @score = { human: 0, computer: 0 }
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors. Good bye!"
  end

  def display_winner
    if score[:human] == 3
      puts "#{human.name} won!"
    else
      puts "#{computer.name} won!"
    end
  end

  def play_again?
    answer = nil

    loop do
      puts "Would #{human.name} like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer.downcase == 'y'
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_score
    puts "The score is #{human.name}: #{score[:human]}. #{computer.name}: #{score[:computer]}"
  end

  def display_move_history
    puts "So far #{human.name} has chosen: #{human.move_history.join(', ')}."
    puts "So far #{computer.name} has chosen: #{computer.move_history.join(', ')}."
  end

  def calculate_score
    if human.move > computer.move
      score[:human] += 1
    elsif human.move < computer.move
      score[:computer] += 1
    end
  end

  def reset_score
    score[:human], score[:computer] = 0, 0
  end

  def winner?
    score[:computer] == 3 || score[:human] == 3
  end

  def play
    display_welcome_message

    loop do
      reset_score
      loop do
        human.choose
        computer.choose
        display_moves
        display_move_history
        calculate_score
        display_score
        break if winner?
      end
      display_winner
      break unless play_again?
    end

    display_goodbye_message
  end
end

RPSGame.new.play
