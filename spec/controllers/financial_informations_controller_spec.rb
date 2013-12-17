require 'spec_helper'

describe FinancialInformationsController do

  let(:income) { 7000000 }
  let(:savings) { 4000000 }
  let(:retirement) { 9000000 }

  let(:valid_attributes) do
    { income: income, savings: savings, retirement: retirement }
  end

  let(:valid_session) { {} }


  describe "GET new" do
    it "stores a new FinancialInformation instance in @financial_information" do
      get :new, {}, valid_session
      assigns(:financial_information).should be_a_new(FinancialInformation)
    end
  end


  describe "POST create" do
    describe "with valid params" do
      it "creates a new FinancialInformation instance" do
        expect {
          post :create, {:financial_information => valid_attributes}, valid_session
        }.to change(FinancialInformation, :count).by(1)
      end

      it "assigns a newly created FinancialInformation instance to @financial_information" do
        post :create, {:financial_information => valid_attributes}, valid_session
        assigns(:financial_information).should be_a(FinancialInformation)
        assigns(:financial_information).should be_persisted
      end

      it "redirects to the life insurance recommendation page" do
        post :create, {:financial_information => valid_attributes}, valid_session
        response.should redirect_to(FinancialInformation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved FinancialInformation instance to @financial_information" do
        FinancialInformation.any_instance.stub(:save).and_return(false)
        post :create, {:financial_information => { "bad" => "value" }}, valid_session
        assigns(:financial_information).should be_a_new(FinancialInformation)
      end

      it "re-renders the 'new' template" do
        FinancialInformation.any_instance.stub(:save).and_return(false)
        post :create, {:financial_information => { "bad" => "value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

end
