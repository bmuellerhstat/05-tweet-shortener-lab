# Write your code here.
def dictionary
{"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    "for" => '4',
    "four"=> '4', 
    'be'=> 'b', 
    'you' => 'u', 
    "at" => "@", 
    "and"=> "&"}
end

def word_substituter(tweet_str)
    arr = []
    tweet_str.split.each do |word|
        if dictionary.keys.include?(word.downcase)
            word.gsub!(word, dictionary[word.downcase])
        end
        arr << word
    end
    arr.join(" ")
end

def bulk_tweet_shortener(tweets_arr)
    tweets_arr.each do |tweet|
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
    if word_substituter(tweet).length > 140
        tweet[1..140]
    else
        word_substituter(tweet)
    end
end


