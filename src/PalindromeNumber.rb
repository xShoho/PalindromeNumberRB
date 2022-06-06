class PalindromeNumber
	def isPalindrome(x)
		if x < (-2 ** 31) || x > ((2 ** 31) - 1)
			raise StandardError.new "Invalid number #{ x }, should be higher than #{ -2 ** 31 } and lower than #{ (2 ** 31) - 1 }"
		end

		if x < 0
			return false
		end

		if x < 10
			return true
		end

		digits = []

		for i in (1..Math.log10(x) + 1)
			digits.push(x % 10)
			x /= 10
		end

		return digits == digits.reverse
	end
end