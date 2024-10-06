dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
    string.downcase!
    hash = {}
    dict.each do |word|
        arr = string.scan(word)
        count = arr.length
        next if count == 0
        hash[word] = count
    end
    hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)