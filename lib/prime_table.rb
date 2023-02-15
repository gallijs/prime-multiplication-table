# frozen_string_literal: true

require "optparse"
require_relative "prime_table/version"

module PrimeTable
  class Error < StandardError
    def message
      "N is not a positive whole number."
    end
  end

  # Define the options and parse the command line arguments
  def self.parse(options)
    n = 3

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: prime_table.rb [options]"

      opts.on("-n N", Integer, "Number of primes to generate (default: 3)") do |value|
        n = value
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return n
  end

  def self.generate_primes_list(length)
    raise Error if !(length.kind_of? Integer) || length.negative?
  end
end
