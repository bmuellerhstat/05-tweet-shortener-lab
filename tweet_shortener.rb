# Write your code here.

def dictionary
    {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweets)
    empty = []
    tweets.split.each do |tweet|
        if dictionary.keys.include?(tweet.downcase)
            tweet.gsub!(tweet, dictionary[tweet.downcase])
        end
        empty << tweet
    end.join(" ")
end

def bulk_tweet_shortener(tweet_arrays)
    tweet_arrays.each do |tweet_arr|
        puts word_substituter(tweet_arr)
    end
end

def selective_tweet_shortener(tweet_length)
    if tweet_length.length > 140
        word_substituter(tweet_length)
    else
        return tweet_length
    end
end

def shortened_tweet_truncator(tweet_dots)
    if word_substituter(tweet_dots).length > 140
        word_substituter(tweet_dots)[0..136] << "..." #note to ask, why is it only in range of 0 to 136, why cant it be 0 to 139..?
    else
        tweet_dots
    end
end