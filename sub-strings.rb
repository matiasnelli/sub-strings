dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#convert string to array
#iterate over array and push to new array all items that match a word in dictionary
def substring(string, dictionary)
    string.downcase!
    string_array = string.split
    match_array = []
    count_array = []

#if substring from dictionary is in 'string', push substring to match_array
#count the number of times each dictionary substring occurs in string and push to count_array, remove zeros
dictionary.each do |i|
    if string_array.any? {|s| s.include?(i)}
        match_array.push(i)
    end
    count = string_array.count {|s| s.include?(i)}
    count_array.push(i)
    count_array.delete(0)
end

#final result is a hash made from two equals lenght arays,  match_array and count_array
#where one array is the key and the other is the value
result = match_array.zip(count_array).to_h

    puts "these are the strings from dictionary that match string #{match_array}"
    puts "these matches occur this many times #{count_array}"
    puts "the final hash is #{result}"
end

substring("below", dictionary)
substring("howdy partner, sit down! how's it going", dictionary)