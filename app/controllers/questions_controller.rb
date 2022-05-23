class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:query]

    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return "Great!"
      elsif your_message[-1]=="?"
      return "Silly question, get dressed and go to work!"
      else
      return "I don't care, get dressed and go to work!"
    end
  end

  # def coach_answer(your_message)
  #   case your_message
  #   when "I am going to work right now!"
  #     return ""
  #     when "I'm going to work!"
  #     return "Great!"
  #     else
  #     return "invalid question.....plonker!"
  #   end
  # end
end
