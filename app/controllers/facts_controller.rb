class FactsController < ApplicationController
  before_action :load_fact, only: [:show, :edit, :update, :destroy]


  def index
    @facts = Fact.all
  end

  def new
    @fact = Fact.new
  end

  def show
    @fact = Fact.find(params[:id])

  end

  def create
    @fact = Fact.create(fact_params)
    
    @fact.user = current_user
    if @fact.save
      redirect_to fact_path(@fact), notice: 'Fact successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fact.update_attributes(fact_params)
    if @fact.save
      redirect_to fact_path(@fact), notice: 'Fact successfully created.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def fact_params
    params.require(:fact).permit(:body, :user_id)
  end

  def load_fact
    @fact = Fact.find(params[:id])
  end

end
