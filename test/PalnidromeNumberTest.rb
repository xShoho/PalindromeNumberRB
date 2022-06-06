require "./src/PalindromeNumber"

describe PalindromeNumber do

	describe '#isPalindrome' do
		context 'Given 121' do
			it 'should return true' do
				expect(subject.isPalindrome(121)).to eql(true)
			end
		end

		context 'Given -121' do
			it 'should return false' do
				expect(subject.isPalindrome(-121)).to eql(false)
			end
		end

		context 'Given 10' do
			it 'should return false' do
				expect(subject.isPalindrome(10)).to eql(false)
			end
		end
	end

end