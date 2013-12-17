require 'spec_helper'

feature "Life insurance recommendation" do

  let(:submit_button) { "Get Recommendation" }

  let(:income) { 6300000 }
  let(:savings) { 3400000 }
  let(:retirement) { 8500000 }

  let(:tax_rate) { TAX_RATE }

  let(:life_insurance_recommendation) do
    income * 10 * (1 - tax_rate) - (savings + retirement)
  end

  let(:formatted_life_insurance_recommendation) do
    ActionController::Base.helpers
      .number_to_currency(life_insurance_recommendation)
  end

  let(:success_message) do
    "You should get #{formatted_life_insurance_recommendation} in life insurance"
  end



  scenario "with a given income, savings and retirement value" do
    fill_out_form_with(income, savings, retirement)

    expect(page).to have_content(success_message)
  end


  def fill_out_form_with(income, savings, retirement)
    visit new_financial_information_path
    fill_in "financial_information[income]", with: income
    fill_in "financial_information[savings]", with: savings
    fill_in "financial_information[retirement]", with: retirement
    click_button submit_button
  end
end