# Write your code here.
# Write your code here.
=begin
iterate through sentence
include? array with words
=end
# words = ["too","to","two","four","for","be","you","at","and"]
# words = {
#       "too" => "2",
#       "to" => "2",
#       "two" =>"2",
#       "four" => "4",
#       "for" => "4",
#       "be" => "b",
#       "you" => "u",
#       "at" => "@",
#       "and" => "&",
#       "hello" => "hi"
#     }

def word_substituter(tweet)
    words = {
      "too" => "2",
      "to" => "2",
      "two" =>"2",
      "four" => "4",
      "for" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&",
      "hello" => "hi"
    }
    tweet.split.map do |word|
    if words.keys.include?(word.downcase)
            word = words[word.downcase]
        else
            word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweet)
    tweet.collect do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweets)
    if tweets.length > 140
        word_substituter(tweets)
    else
        tweets
    end 
end 

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..138] + '.'
    else
        tweet
    end
end