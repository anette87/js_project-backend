class PlansController < ApplicationController

    def create
        plan = Plan.create(plan_params)
        render json: PlanSerializer.new(plan)
    end 
    
    def update
        plan = Plan.find(params[:id])
        plan.update(plan_params)
        render json: PlanSerializer.new(plan)
    end
    
    def destroy
        plan = Plan.find(params[:id])
        plan.destroy
        render json: PlanSerializer.new(plan)
        
    end

    private

    def plan_params
        params.require(:plan).permit(:day_id, :location, :description)
    end

end 