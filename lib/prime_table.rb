# frozen_string_literal: true

require "optparse"
require_relative "prime_table/version"

# This module receives an integer N and creates a multiplication table of N prime numbers
module PrimeTable
  # Invalid N error
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
    n
  end

  def self.prime?(number)
    (2..Math.sqrt(number)).each do |j|
      return false if (number % j).zero?
    end

    true
  end

  # Creates a list of prime numbers using Sieve of Eratosthenes algorithm
  def self.generate_primes_list(length)
    raise Error if !(length.is_a? Integer) || length.negative?

    primes = []
    i = 2
    while primes.length < length
      primes << i if prime?(i)
      i += 1
    end

    primes
  end

  # Prints a multiplication table given an array of integers
  def self.print_multiplication_table(primes)
    n = primes.length

    # Calculate the max width of each cell in the table
    max_width = (primes.last**2).to_s.length

    # Print header
    puts (" " * (max_width + 1)) + "| " + primes.map { |p| p.to_s.rjust(max_width) }.join(" | ")

    # Print separator
    puts "-" * (max_width + 1) + "+" + ("-" * (max_width + 1) + "-+") * n

    # Print multiplication table
    primes.each do |p1|
      print "#{p1.to_s.rjust(max_width)} |"
      primes.each do |p2|
        product = p1 * p2
        print " #{product.to_s.rjust(max_width)} |"
      end
      puts
    end
  end
end
