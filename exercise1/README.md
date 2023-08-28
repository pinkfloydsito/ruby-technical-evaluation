[![Ruby](https://github.com/pinkfloydsito/ruby-technical-evaluation/actions/workflows/ruby.yml/badge.svg)](https://github.com/pinkfloydsito/ruby-technical-evaluation/actions/workflows/ruby.yml)

# AddDigitsService

The `AddDigitsService` is a Ruby class that provides a method to calculate the sum of the digits of a given integer value until the sum becomes a single digit.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Example](#example)

## Introduction

The `AddDigitsService` class encapsulates the logic to calculate the sum of the digits of an integer value iteratively until the sum becomes a single digit. This can be useful in scenarios where you want to reduce a large number to a smaller value by adding its digits repeatedly.

## Usage

To use the `AddDigitsService`, you'll need to create an instance of the class by providing an integer value as a parameter. The class provides a single method `call` which performs the digit sum calculation. Here's how you can use it:

```ruby
# Create an instance of AddDigitsService
service = AddDigitsService.new(value: 98765)

# Calculate the sum of digits
result = service.call

puts "Final result: #{result}"
```

In this example, the `AddDigitsService` will start with the value `98765` and repeatedly add its digits until the sum becomes a single digit. The final result will be printed to the console.

## Example

Let's walk through an example of how the `AddDigitsService` works:

Suppose we have an instance of `AddDigitsService` created with the value `12345`. The calculation would proceed as follows:

1. Initial value: 12345
2. Sum of digits: 1 + 2 + 3 + 4 + 5 = 15
3. Since the sum (15) is not a single digit, repeat the process with the new sum:
   - Sum of digits: 1 + 5 = 6

The final result is 6. So, for the input value `12345`, the `AddDigitsService` will return `6`.

## Conclusion

The `AddDigitsService` class provides a convenient way to calculate the sum of digits of an integer value iteratively until a single-digit result is achieved. This can be useful in various scenarios such as digital root calculations or reducing large numbers to smaller values. Feel free to incorporate this class into your Ruby projects when such functionality is required.