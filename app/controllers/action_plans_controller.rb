class ActionPlansController < ApplicationController
  def index
    @action_plans = ActionPlan.all
  end

  def show
    @action_plan = ActionPlan.find(params[:id])
  end

  def new
    @action_plan = ActionPlan.new
  end

  def create
    @action_plan = ActionPlan.new
    @action_plan.user_id = params[:user_id]
    @action_plan.message = params[:message]

    if @action_plan.save
      redirect_to "/", :notice => "Action plan created successfully."
    else
      render 'new'
    end
  end

  def edit
    @action_plan = ActionPlan.find(params[:id])
  end

  def update
    @action_plan = ActionPlan.find(params[:id])

    @action_plan.user_id = params[:user_id]
    @action_plan.message = params[:message]

    if @action_plan.save
      redirect_to "/action_plans", :notice => "Action plan updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @action_plan = ActionPlan.find(params[:id])

    @action_plan.destroy

    redirect_to "/action_plans", :notice => "Action plan deleted."
  end
end
