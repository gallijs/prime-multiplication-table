# Prime Multiplication Table

This is a ruby script that prompts the user to enter a number.
This number `n` is used to generate a list of prime numbers of the given length `n`.
It then will present the user with a multiplication table created from this list of primes.

## Installation
This script is written in ruby.
- Install rbenv
  https://github.com/rbenv/rbenv
- Install correct ruby version
  `rbenv install $(cat .ruby-version)`
- Install gems
  `bundle install`

## Usage

Run `ruby lib/cli.rb` on your terminal
```
Usage: prime_table.rb [options]
    -n N                             Number of primes to generate (default: 3)
    -h, --help                       Prints this help
```

## Test
`bundle exec rspec`

Also simply `rake` will run test and linter.

## Thoughts and Improvement
I'm overall pleased with the project. The PrimeTable is well documented and has some relavent and useful methods.
Also all of the methods for the PrimeTable have some testing.

Improvement possibilities:
- More testing related to the parser and covering error cases there
- There are faster algorithms for generating prime numbers such as Sieve of Atkin
- Creating the multiplication table and the presentation of it could be decoupled
- Also for the `#print_multiplication_table` could be in a separate module form more generalized math problems. Since it could create a multiplication table for any array of integers not just primes.
- Create a nicer output for the table. The way the table is printed to the console is pretty crude. Could even generate a nice html file instead.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
