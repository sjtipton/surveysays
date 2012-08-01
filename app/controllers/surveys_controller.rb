class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
    @survey.questions << Question.new
    @survey.questions.each { |q| q.choices << Choice.new }
  end

  def create
    @survey = Survey.new(params[:survey])
    @survey.questions << Question.new(params[:question])
    @survey.questions.each { |q| q.choices << Choice.new(params[:choice]) }

    if @survey.save
      redirect_to @survey, notice: "Successfully created survey."
    else
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])

    if @survey.update_attributes(params[:survey])
      redirect_to @survey, notice: "Successfully updated survey."
    else
      render :edit
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    redirect_to surveys_url, notice: "Successfully destroyed survey."
  end
end
