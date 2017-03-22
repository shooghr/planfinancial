class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]
  #before_action :load_relationship, only: [:new, :edit, :update, :create]

  # GET /plans
  def index
    @q = Plan.all.search(params[:q])
    @plans = @q.result(distinct: true).page(params[:page]).per(30)
  end

  # GET /plans/1
  def show
  end
  
  # GET /plans/new
  def new
    @plan = Plan.new
  end

  # GET /plans/1/edit
  def edit
  end

  # POST /plans
  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      redirect_to @plan, notice: 'Plan foi criado(a) com sucesso!.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /plans/1
  def update
    if @plan.update(plan_params)
      redirect_to @plan, notice: 'Plan foi atualizado(a) com sucesso'
    else
      render action: 'edit'
    end
  end

  # DELETE /plans/1
  def destroy
    @plan.destroy
    redirect_to plans_url, notice: 'Plan foi removido(a) com sucesso.'
  end

  private

    def set_plan
      @plan = Plan.find(params[:id])
    end

    def plan_params
      params.require(:plan).permit(:name)
    end
end
