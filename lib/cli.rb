# frozen_string_literal: true

require_relative "prime_table"

n = PrimeTable.parse(ARGV)

primes = PrimeTable.generate_primes_list(n)

PrimeTable.print_multiplication_table(primes)
