# Nupack

This is a Ruby Gem created for a coding exercise.

## Usage

Create a new job using:

    job = Nupack::Job.new( Base Price , Required Personnel , Material Type )

And a new calculator:

    calculator = Nupack::Calculator.new

Now you can call the calculate method:

    calculator.calculate(job)

## Requirements

* Ruby 2.2.4 or higher, including any development packages necessary
  to compile native extensions.

* Rspec 3.4.0 or higher for testing.

## Testing

Run:

    $ rspec

to run all tests or

    $ rspec path/to/file

to run a single test.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eduardoprauze/nupack.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
