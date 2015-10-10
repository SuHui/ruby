=begin
学号 201529015029022
姓名 苏辉
=end
def hello 
	puts "Hell,world."
	puts "###1###"
end

def findposition(string, pattern)
	puts Regexp.new(pattern) =~ string	
	puts "###2###"
end

def printname(name, times)
	times.times do
		puts name
	end
	puts "###3###"
end

def sentencenum(num)
	num.times do |i|
		puts "This is sentence number #{i+1}"
	end
	puts "###4###"
end

def guessnumber
	puts "Gusss a number between 0 and 9 "
	randomNum = rand(10)
	guessNum = gets()
	while true
		if guessNum.to_i > randomNum
			puts "Too Big"
		elsif guessNum.to_i < randomNum
			puts "Too Small"
		else
			puts "Bingo"
			break
		end
		puts "Guess again!"
		guessNum = gets()
	end
	puts "###5###"
end



hello()
findposition("Hello,Ruby","Ruby")
printname("suhui", 10)
sentencenum(10)
guessnumber()
