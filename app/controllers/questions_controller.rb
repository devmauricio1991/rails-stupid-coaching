class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params[:user_answer]
    @coach_answer = ""

    if @answer == 'I am going to work'
      @coach_answer = 'Great!'

    elsif @answer.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'

    else
      @coach_answer = "I don't care, get dressed and go to work!"

    end
  end
end
