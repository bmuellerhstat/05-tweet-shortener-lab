# "Hello World".each_char do |letter|
#   puts letter
# end

def dictionary
  words = {
    "hello" => "hi",
    "two" => "2",
    "to" => "2", 
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "four" => "4",
    "for" => "4"
  }
end

def word_substituter(tweet)
    tweet.split.map do |word| #splits the string to individual string + run the block for the replacement
        if dictionary.keys.include?(word.downcase)
          word = dictionary[word.downcase]
        else
          word #prints the same word as usual
        end
    end.join(" ") #connects them together
end

def bulk_tweet_shortener(tweet)
    tweet.each do |sentence| #iterate through the sentence
      puts word_substituter(sentence) #prints/puts the newly made sentence
    end
end

def selective_tweet_shortener(tweet_one)
    if tweet_one.length > 140 #characters that are less than 140
      word_substituter(tweet_one) #word replacement
    else
      tweet_one #returns the string
    end
end

def shortened_tweet_truncator(third_tweet)
    if third_tweet.length == 140 #if the length of the tweet is equal to 140
      word_substituter(third_tweet) #use word substituter to be of use
    else
      third_tweet #prints the original tweet
    end
end

def shortened_tweet_truncator(third_tweet)
    if third_tweet.length > 140
      word_substituter(third_tweet)[0..136] + '...'
    else
      third_tweet
    end
end


