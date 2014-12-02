class AnswersController < ApplicationController


  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new
    @answer.text = params[:text]

    if @answer.save
      redirect_to "/answers", :notice => "Answer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    @answer.text = params[:text]

    if @answer.save
      redirect_to "/answers", :notice => "Answer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])

    @answer.destroy

    redirect_to "/answers", :notice => "Answer deleted."
  end
end
