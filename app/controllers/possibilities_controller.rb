class PossibilitiesController < ApplicationController
  def index
    @possibilities = Possibility.all
  end

  def show
    @possibility = Possibility.find(params[:id])
  end

  def new
    @possibility = Possibility.new
  end

  def create
    @possibility = Possibility.new
    @possibility.answer_id = params[:answer_id]
    @possibility.link_id = params[:link_id]

    if @possibility.save
      redirect_to "/possibilities", :notice => "Possibility created successfully."
    else
      render 'new'
    end
  end

  def edit
    @possibility = Possibility.find(params[:id])
  end

  def update
    @possibility = Possibility.find(params[:id])

    @possibility.answer_id = params[:answer_id]
    @possibility.video_id = params[:video_id]

    if @possibility.save
      redirect_to "/possibilities", :notice => "Possibility updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @possibility = Possibility.find(params[:id])

    @possibility.destroy

    redirect_to "/possibilities", :notice => "Possibility deleted."
  end
end
