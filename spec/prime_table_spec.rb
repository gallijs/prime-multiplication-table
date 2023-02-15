# frozen_string_literal: true

require "spec_helper"
require "optparse"
require "prime_table"

describe "PrimeTable" do
  describe ".parse" do
    context "when the n parameter is a positive number" do
      it "returns the integer" do
        expect(PrimeTable.parse(%w[-n 10])).to eq 10
      end
    end
  end

  describe ".prime?" do
    context "when number is not" do
      it "returns false" do
        expect(PrimeTable.prime?(12)).to be false
      end
    end

    context "when number is prime" do
      it "returns true" do
        expect(PrimeTable.prime?(5)).to be true
      end
    end
  end

  describe ".generate_primes_list" do
    context "when receiving a string parameter" do
      it "raises an error" do
        expect { PrimeTable.generate_primes_list "foo" }.to raise_error PrimeTable::Error
      end
    end

    context "when receiving a negative integer" do
      it "raises an error" do
        expect { PrimeTable.generate_primes_list(-1) }.to raise_error PrimeTable::Error
      end
    end

    context "when receiving a positive integer n" do
      let(:length) { 3 }
      let(:primes_list) { PrimeTable.generate_primes_list(length) }

      it "returns a list of length n" do
        expect(primes_list.length).to eq length
      end

      it "returns a list primes" do
        expect(primes_list).to match_array [2, 3, 5]
      end
    end
  end

  xit "return a multiplication table of prime numbers"
end
