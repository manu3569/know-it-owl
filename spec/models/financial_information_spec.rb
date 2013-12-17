require 'spec_helper'

describe FinancialInformation do

  let(:income) { 6000000 }
  let(:savings) { 3000000 }
  let(:retirement) { 8000000 }

  let(:tax_rate) { TAX_RATE }
  
  let(:life_insurance_recommendation) do
    income * 10 * (1 - tax_rate) - (savings + retirement)
  end

  let(:params) do
    { income: income, savings: savings, retirement: retirement }
  end

  let(:financial_information) { FinancialInformation.new(params) }

  subject { financial_information }



  describe "#income" do

    it { should respond_to(:income) }

    it "returns the income from the financial information in cents" do
      expect(financial_information.income).to eq(income)
    end

    it "is 0 by default" do
      expect(FinancialInformation.new.income).to eq(0)
    end

  end


  describe "#savings" do

    it { should respond_to(:savings) }

    it "returns the savings from the financial information in cents" do
      expect(financial_information.savings).to eq(savings)
    end

    it "is 0 by default" do
      expect(FinancialInformation.new.savings).to eq(0)
    end

  end


  describe "#retirement" do

    it { should respond_to(:retirement) }

    it "returns the retirement from the financial information in cents" do
      expect(financial_information.retirement).to eq(retirement)
    end

    it "is 0 by default" do
      expect(FinancialInformation.new.retirement).to eq(0)
    end

  end


  describe "#life_insurance_recommendation" do

    it { should respond_to(:life_insurance_recommendation) }

    it "gives the recommended life insurance based on financial information" do
      expect(financial_information.life_insurance_recommendation)
        .to eq(life_insurance_recommendation)
    end

    it "recommends 0 when all financial information is 0" do
      expect(FinancialInformation.new.life_insurance_recommendation).to eq(0)
    end

  end

end
