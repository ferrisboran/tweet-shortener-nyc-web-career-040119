def dictionary
  replace = {
      "hello" => "hi",
      "to" => "2",
      "two" => "2",
      "too" => "2",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&",
      "for" => "4",
      "four" => "4"
    }
end

def word_substituter(string)
  arr = string.split(" ")
  tweet = []
  arr.each do |word|
    if dictionary.keys.include?(word)
      tweet.push(dictionary[word])
    else
      tweet.push(word)
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
  end
end
