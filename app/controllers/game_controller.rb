
class GameController < ApplicationController
  def home
  end

  def rock
    @user_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = "We " + determine_winner(@user_choice, @computer_choice)
  end

  def paper
    @user_choice = "paper"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = "We " + determine_winner(@user_choice, @computer_choice)
  end

  def scissors
    @user_choice = "scissors"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = "We " + determine_winner(@user_choice, @computer_choice)
  end

  private

  def determine_winner(user, computer)
    return "tie" if user == computer
    return "win" if (user == "rock" && computer == "scissors") ||
                     (user == "paper" && computer == "rock") ||
                     (user == "scissors" && computer == "paper")
    "lose"
  end
end
