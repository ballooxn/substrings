require "pry-byebug"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)

    hash = {}

    dict.each do |word|
        string = string.downcase
        count = string.scan(word).length
        hash[word] = count if count > 0
    end

    return hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)