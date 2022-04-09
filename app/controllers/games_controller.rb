class GamesController < ApplicationController

  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }

  end

  def score

    fetch(`https://wagon-dictionary.herokuapp.com/´${@word}´`)
      .then(response => response.json())
      .then((data) => {
    @word = params[:word]
    if params[:question].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif params[:question] == "I am going to work"
      @answer =  "Great!"
    else
      @answer =  "I don't care, get dressed and go to work!"
    end
  end
end
