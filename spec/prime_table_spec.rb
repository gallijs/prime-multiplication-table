# frozen_string_literal: true

require "spec_helper"
require "optparse"
require_relative "../lib/prime_table"

describe "PrimeTable" do
  describe ".parse" do
    context "when the n parameter is a positive number" do
      it "returns the integer" do
        expect(PrimeTable.parse %w[-n 10]).to eq 10
      end
    end
  end
  xit "return a multiplication table of prime numbers"
end
