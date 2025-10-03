# frozen_string_literal: true

require 'string_calculator'

RSpec.describe StringCalculator do
  let(:string_calculator) { StringCalculator.new }

  describe '#add with basic inputs' do
    it 'returns 0 for an empty string' do
      expect(string_calculator.add('')).to eq(0)
    end

    it 'returns the number itself if only one number is given' do
      expect(string_calculator.add('1')).to eq(1)
    end

    it "sums two numbers" do
      expect(string_calculator.add("1,5")).to eq(6)
    end

    context "with many numbers" do
      it "sums more than two numbers" do
        expect(string_calculator.add("1,2,3,4,5")).to eq(15)
        expect(string_calculator.add("10,20,30,40,50,60")).to eq(210)
      end
    end
  end
end