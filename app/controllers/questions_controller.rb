class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to("/questions")
    else
      flash[:alert] = "Invalid entries, please try again"
      render("new")
    end
  end

  def edit

  end

  def show
  end


private
  def question_params
    params.require(:question).permit(:title, :question)
  end

end
