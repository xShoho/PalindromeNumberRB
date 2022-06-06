# Palindrome Number with Ruby

## Problem
Task is to check if number is a palindrome. It means, that when we reverse this number it still has the same value.

### Example
When we reverse number 121 it's still 121, but when we reverse 123 it is 321 and it's not equal.

Important is to remember, that -121 when it is reversed it's 121- and it's not the same.

### Important thing
Important is to not convert this number to String.

## Solution
To solve this problem we have to know how many digits given number has.

To check this we can use Math.log10() method:
```ruby
Match.log10(100) # => 2
```
When we add to the result 1, we have number of digits.

Right now we can add rest of the division by 10 to array and reverse the array to check if these two arrays are equal.

```ruby
digits = []
digits_number = Math.log10(num) + 1

for i in (1..digits_number)
	digits.push[num % 10]
	num /= 10
end

return digits == digits.reverse
```