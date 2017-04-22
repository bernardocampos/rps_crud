class GamesController < ApplicationController

  def index
    render("/games/index.html.erb")
  end
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You tie"
    elsif @computer_move == "paper"
      @outcome = "You lose"
    else
      @outcome = "You win!"
    end

    render("/games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You win!"
    elsif @computer_move == "paper"
      @outcome = "You tie"
    else
      @outcome = "You lose"
    end

    render("/games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "You lose"
    elsif @computer_move == "paper"
      @outcome = "You win!"
    else
      @outcome = "You tie"
    end

    render("/games/play_scissors.html.erb")
  end

end
