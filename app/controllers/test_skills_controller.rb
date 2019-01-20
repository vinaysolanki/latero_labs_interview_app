class TestSkillsController < ApplicationController
  before_action :get_interview, only: [:new, :edit, :create, :update, :destroy]

  def new
    @test_skill = TestSkill.new
  end

  def edit
    @test_skill = TestSkill.find(params[:id])
  end

  def create
    @test_skill = @interview.test_skills.new(test_skill_params)

    if @test_skill.save
      redirect_to interview_path(params[:interview_id])
    else
      render :new
    end
  end

  def update
    @test_skill = @interview.test_skills.find(params[:id])
    if @test_skill.update(test_skill_params)
      redirect_to interview_path(@interview)
    else
      render :new
    end
  end

  def destroy
    @test_skill = @interview.test_skills.find(params[:id])
    @test_skill.destroy
    
    redirect_to interview_path(@interview)
  end

  private

  def test_skill_params
    params.require(:test_skill).permit(:name)
  end

  def get_interview
    @interview = Interview.find(params[:interview_id])
  end
end
