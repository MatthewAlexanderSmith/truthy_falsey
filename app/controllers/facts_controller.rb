class FactsController < ApplicationController

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
      redirect_to fact_path(@fact), notice: 'Pledge successfully updated.'
    else
      render :new
    end
  end

  def edit
  end


  def update
  end

  def destroy
  end

  private

  def fact_params
    params.require(:fact).permit(:body, :user_id)
  end

end
