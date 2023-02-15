# frozen_string_literal: true

require "spec_helper"
require "optparse"
require "prime_table"

describe "PrimeTable" do
  describe ".parse" do
    context "when the n parameter is a positive number" do
      it "returns the integer" do
        expect(PrimeTable.parse %w[-n 10]).to eq 10
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
      xit "returns a list primes of length n"
    end
  end
  xit "return a multiplication table of prime numbers"
end
