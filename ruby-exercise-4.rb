#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def last_word line
  line.split(/[\W]+/).last
end


snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines

puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0

#rewrite this to use map and each rather than while
#note: you will find each_slice useful
words = snowy_lines.map do |line|
  last_word line
end
words.each_slice(9).each do |stanza|
  [1,2,4,5].each do |n|
    puts "#{stanza[i + n]}, #{stanza[i + n + 2]}"
  end
end
