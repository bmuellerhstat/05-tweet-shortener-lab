# Write your code here.

def dictionary(tweet_words_array)
    substitutions = {
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
    tweet_words_array.map do |tweet_word|
        if substitutions.keys.include?(tweet_word.downcase)
            tweet_word = substitutions[tweet_word.downcase]
        else
            tweet_word
        end
    end
end

def word_substituter(tweet)
    dictionary(tweet.split(" "))*" "
end

def bulk_tweet_shortener(tweets_array)
    tweets_array.each do |tweet|
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
    if selective_tweet_shortener(tweet).length > 140
        selective_tweet_shortener(tweet)[0..135] << " ..."
    else
        selective_tweet_shortener(tweet)
    end
end