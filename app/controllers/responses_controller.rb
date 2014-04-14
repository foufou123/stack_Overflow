class ResponsesController < ApplicationController

  def index
  end

  def create
    @question = Question.find_by(params[:id])
    @response = @question.responses.new(response_params)
    if @response.save
      redirect_to("/questions")
    else
      render("/questions/show")
    end
  end

  def edit
  end

  def show
  end

  def update
  end
private
  def response_params
    params.require(:response).permit(:response)
  end
end
