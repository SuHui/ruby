class Anagrams
  def initialize(file_name)
    @file_name = file_name
  end
  
  def getwords
    words = []
    File.foreach(@file_name) {|line| words << line.chomp}
    return words
  end

  def get_hashmap_for_words
    hash_map = {}
    @words.each do |word|
      sorted_word = word.chars.sort.join
      hash_map[sorted_word] ||= []
      hash_map[sorted_word] << word
    end
    return hash_map
  end

  def show_anagrams
    programstarttime = Time.now
    aFile = File.new("anagrams.txt","w")
    @words = getwords
    hash_map = get_hashmap_for_words
    hash_map.each do |key, value|
  		if value.length > 1
        aFile.puts value.join(" ")

  			#print value.join(" ")
  			#puts value.join(" ")
      end
    end
    aFile.close
    puts "已经写入anagrams.txt"
    puts "Totaltime :#{Time.now-programstarttime}"
  end
end


anagrams = Anagrams.new('words.txt')
anagrams.show_anagrams
