# Write your code here.
def word_substituter(tweet)
    tweet.gsub((/be\b/), "b").gsub(/hello/, "hi").gsub(/((too|to)|two)/,"2").gsub(/((for|(four)|(For|Four)))/,"4").gsub(/you\b/, "u").gsub(/and\b/, "&").gsub(/\bat\b/, "@")

end
def bulk_tweet_shortener(tweets)
tweets.each{|tweets|
puts word_substituter(tweets)
}
end
def selective_tweet_shortener(tweet)
    if(tweet.length>140)
       word_substituter(tweet) 
    else
        tweet
    end
end
def shortened_tweet_truncator(tweet)
    if(tweet.length>140)
       word_substituter(tweet)[0...140]
    else
        tweet
    end
end