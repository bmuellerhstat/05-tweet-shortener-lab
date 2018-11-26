# Write your code here.
def dictionary

 h = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  }
end
def word_substituter(string)
 new_tweet = string.split.map do |word|
     if dictionary.keys.include?(word.downcase)
         word = dictionary[word.downcase]
     else word
     end
 end
 new_tweet.join(" ")
end
def bulk_tweet_shortener(tweets)
    bulk = tweets.map do |tweet|
       puts word_substituter(tweet)
    end
end
def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    # elsif tweet.length < 130
    #     return tweet
    end
end