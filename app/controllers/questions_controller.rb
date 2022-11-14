class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]

    if @question.downcase == 'i am going to work right now!'
      @answer = @answers[0]
    elsif @question.include?('?')
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
