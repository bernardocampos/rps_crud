class GamesController < ApplicationController

  def index
    render("/games/index.html.erb")
  end
  def landing
    Round.delete_all
    render("/games/landing.html.erb")
  end
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "tie"
    elsif @computer_move == "paper"
      @outcome = "lose"
    else
      @outcome = "win"
    end

    @outcome_message = "You #{@outcome}"

    new_entry = Round.new
    new_entry.computer_move = @computer_move
    new_entry.player_move = "rock"
    new_entry.outcome = @outcome
    new_entry.save

    render("/games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "win"
    elsif @computer_move == "paper"
      @outcome = "tie"
    else
      @outcome = "lose"
    end

    @outcome_message = "You #{@outcome}"

    new_entry = Round.new
    new_entry.computer_move = @computer_move
    new_entry.player_move = "paper"
    new_entry.outcome = @outcome
    new_entry.save

    render("/games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @outcome = "lose"
    elsif @computer_move == "paper"
      @outcome = "win"
    else
      @outcome = "tie"
    end

    @outcome_message = "You #{@outcome}"

    new_entry = Round.new
    new_entry.computer_move = @computer_move
    new_entry.player_move = "scissors"
    new_entry.outcome = @outcome
    new_entry.save

    render("/games/play_scissors.html.erb")
  end

end
