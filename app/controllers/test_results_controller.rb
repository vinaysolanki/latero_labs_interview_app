class TestResultsController < ApplicationController
  def index
    @interview = Interview.find(params[:interview_id])
  end

  def new
    @interview = Interview.find(params[:interview_id])
  end

  def create

  end
end
