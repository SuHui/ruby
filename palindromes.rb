class Palindromes
	
	def initialize(file_name)
		@file_name = file_name
	end

	def palindrome
		palindromarr = []
		File.foreach(@file_name) do |line|
			word = line.chomp
			if word == word.reverse
				palindromarr << word
			end
		end
		palindromarr
	end
	
	def show_palindromes
		programstarttime = Time.now
		palindromarr = palindrome
		arr = palindromarr.sort_by{|a| a.length}.reverse!
		puts arr
		puts "Totaltime :#{Time.now-programstarttime}"
	end
end

Palindrome = Palindromes.new("words.txt")
Palindrome.show_palindromes



