def substrings(string, dictionary)
  string = string.downcase
  # match_dictionary = dictionary.select { |substring| substring if string.include?(substring)}
  # match_dictionary = dictionary.select { |substring| p string =~ /#{substring}/}
  match_dictionary = []
  dictionary.each { |substring| match_dictionary += string.scan(/#{substring}/) if string.include?(substring)}
  match_dictionary.reduce(Hash.new(0)) do |substring, match|
    substring[match] += 1
    substring
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)