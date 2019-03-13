def dictionary
  replace = {
      "hello" => "hi",
      "to" => "2",
      "two" => "2",
      "too" => "2",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&"
    }
end

def word_substituter(string)
  arr = string.split(" ")
  arr.each do |word|
    if dictionary.keys.include?(word)
      arr.replace(dictionary.values)
    end
  end
  arr
end
