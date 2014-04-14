class ResponsesController < ApplicationController

  def index
  end

  def create
  end

  def edit
  end

  def show
  end

private
  def response_params
    params.require(:response).permit(:response)
  end
end
