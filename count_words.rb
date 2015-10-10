class WordsCount
	
	def initialize(file_name)
		@file_name = file_name
	end

	def countwords
		words = []
		frequency = Hash.new(0)
		File.foreach(@file_name) do |line|
			words = line.split(/\s+/).reject{|w| w.empty? }
			words.each do |word|
				frequency[word.downcase] += 1
			end
		end
		frequency
	end

	def show_words_count
		starttime = Time.now
		#删除定冠词
		wordscount = countwords.delete_if{|key, value| key == "the"||key == "a" || key == "an" || key =="this" || key == "that" }
		wordscount = wordscount.sort_by{|a, b| b}
		wordscount.reverse!
		wordscount.each do |key,value|
			puts key+"=>"+value.to_s
		end
		puts "TotalTime:#{Time.now-starttime}"
	end
end

wordscount = WordsCount.new("wordcount.txt")
wordscount.show_words_count


