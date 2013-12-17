class FinancialInformation < ActiveRecord::Base

  def life_insurance_recommendation
    self.income * 10 * (1 - TAX_RATE) - (self.savings + self.retirement)
  end

end
