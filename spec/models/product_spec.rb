require 'rails_helper'

RSpec.describe Product, type: :model do
	describe "methods" do
	  describe "#margin" do
	  	before do
	  		@product = FactoryGirl.create(:product)
	  		@retail_margin = (@product.retail - @product.wholesale) / @product.retail
	  	end

	  	it "yields the appropriate margin" do
	  		expect(@product.margin).to eq(@retail_margin)
	  	end
	  end
	end
end
