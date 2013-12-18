class FinancialInformationsController < ApplicationController

  def new
    @financial_information = FinancialInformation.new
  end

  def create
    @financial_information = FinancialInformation.new(financial_information_params)

    if @financial_information.save
      redirect_to @financial_information
    else
      render "new"
    end
  end

  def show
    @financial_information = FinancialInformation.find(params[:id])

    respond_to do |format|
      format.json do
        render json: 
          { recommendation: currency(@financial_information.life_insurance_recommendation)}
      end
      format.html {}
    end

  end

  private

    def financial_information_params
      params.require(:financial_information).permit(:income, :savings, :retirement)
    end

    def currency(amount)
      ActionController::Base.helpers.number_to_currency(amount)
    end

end
