class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while(!game_over)
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    if game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    p "Please enter what you think the sequence is"
    inp = gets.chomp
    if inp.split != seq
      @game_over = true
    end
  end

  def add_random_color
    r = Random.new
    seq << COLORS[r.rand(0...4)]
  end

  def round_success_message
    p "Successful round!"
  end

  def game_over_message
    p "Game over..."
    p "Score was: #{@sequence_length}"
  end

  def reset_game
    p "Starting new game..."
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
