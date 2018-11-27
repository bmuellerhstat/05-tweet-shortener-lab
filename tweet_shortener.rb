# Write your code here.
def word_substituter(tweet)
    words = tweet.split(" ")
    short_str = []
    
    words.each do |word|
        case word.downcase
        when "hello"
            short_str << "hi"
        when "to", "two", "too"
            short_str << "2"
        when "for", "four"
            short_str << "4"
        when "be"
            short_str << "b"
        when "you"
            short_str << "u"
        when "at"
            short_str << "@"
        when "and"
            short_str << "&"
        else 
            short_str << word
        end
    end
    short_str.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        tweet = word_substituter(tweet)
        puts "#{tweet}"
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
    if selective_tweet_shortener(tweet).length > 140
        tweet[0..136] + "..." #length to be 140
    else
        tweet
    end
end