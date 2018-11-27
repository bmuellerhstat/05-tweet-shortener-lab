# Write your code here.
def word_substituter(tweet)
    words = tweet.split(" ")
    
    words.map do |word|
        case word.downcase
        when "hello"
            "hi"
        when "to", "two", "too"
             "2"
        when "for", "four"
             "4"
        when "be"
             "b"
        when "you"
             "u"
        when "at"
             "@"
        when "and"
             "&"
        else 
             word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
    tweet[1..137]+"..."
    else
        tweet
    end
end    
