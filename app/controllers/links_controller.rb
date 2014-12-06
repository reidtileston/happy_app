class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new
    @link.video = params[:video]


    if @link.save
      redirect_to "/links", :notice => "Link created successfully."
    else
      render 'new'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])

    @link.video = params[:video]

    if @link.save
      redirect_to "/links", :notice => "Link updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])

    @link.destroy

    redirect_to "/links", :notice => "Link deleted."
  end
end
