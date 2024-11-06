# app/controllers/game_controller.rb
class GameController < ApplicationController
  def home
  end

  def rock
    @user_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
  end

  def paper
    @user_choice = "paper"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
  end

  def scissors
    @user_choice = "scissors"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
  end

  private

  def determine_winner(user, computer)
    # Returning the result directly as "We tied", "We won", or "We lost"
    return "We tied" if user == computer
    return "We won" if (user == "rock" && computer == "scissors") ||
                       (user == "paper" && computer == "rock") ||
                       (user == "scissors" && computer == "paper")
    "We lost"
  end
end
