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
  cap_key = []
  dictionary.each do |key|
    cap_key.push(key.to_s.capitalize)
  end

  arr = string.split(" ")
  tweet = []
  arr.each do |word|
    if dictionary.keys.include?(word)
      tweet.push(dictionary[word])
    elsif cap_key.include?(word)
      w = word.downcase
      tweet.push(dictionary[w])
    else
      tweet.push(word)
    end
  end
  tweet.join(" ")
  cap_key
end

def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
  end
end
