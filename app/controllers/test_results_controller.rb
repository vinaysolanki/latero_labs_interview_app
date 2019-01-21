class TestResultsController < ApplicationController
  before_action :get_interview

  def index
  end

  def new
    @test_result = @interview.test_results.new
  end

  def edit
    @test_result = @interview.test_results.find(params[:id])
  end

  def create
    @test_result = @interview.test_results.new(test_result_params)
    
    if @test_result.save
      params[:test_scores].each do |test_score|
        @test_result.test_scores.create(test_skill_id: test_score[0], score: test_score[1])
      end
      @test_result.update_total_score
      redirect_to interview_test_results_path(@interview)
    else
      render :new
    end
  end

  def update
    @test_result = @interview.test_results.find(params[:id])

    if @test_result.update(test_result_params)
      params[:test_scores].each do |test_score|
        saved_test_score = @test_result.test_scores.find(test_score[0])
        saved_test_score.update(score: test_score[1])
      end
      redirect_to interview_test_results_path(@interview)
    else
      render :new
    end
  end

  def destroy
    @test_result = @interview.test_results.find(params[:id])
    @test_result.destroy

    redirect_to interview_test_results_path
  end


  private

  def test_result_params
    params.require(:test_result).permit(:candidate_name)
  end

  def get_interview
    @interview = Interview.find(params[:interview_id])
  end
end
