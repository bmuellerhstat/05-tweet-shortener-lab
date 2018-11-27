# Write your code here.
def dictionary
    {
        "hello" => 'hi',
        "to" => "2", 
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        'be' => 'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&"
    }
end 


def word_substituter(tweet)
    tweet.split.each do |word|
      dictionary.keys.each do |dictionary_word|
        if word.downcase == dictionary_word
          word.gsub!(word,dictionary[dictionary_word])
        end
      end
    end.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
    tweet_arr.each do |tweet|
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
    shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length > 140
        shortened_tweet[0..139]
    else
        shortened_tweet
    end
end