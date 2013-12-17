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
  end

  private

    def financial_information_params
      params.require(:financial_information).permit(:income, :savings, :retirement)
    end

end
