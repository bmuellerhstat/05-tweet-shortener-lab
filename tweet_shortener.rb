# Write your code here.
def dictionary 
    dictionary_hash= {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        "be" => 'b',
        "you" => 'u',
        "at" => '@',
        "and" => '&',
    }
    dictionary_hash
end

def word_substituter(tweet)
    tweet.split.collect do |word|
       if dictionary.keys.include?(word.downcase)
           word = dictionary[word.downcase]
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

def selective_tweet_shortener(characters)
    if characters.length > 140
        word_substituter(characters)
    else
        characters
    end
end

def shortened_tweet_truncator(characters)
    if word_substituter(characters).length > 140
        word_substituter(characters)[0..136] + "..."
    else
        characters
    end
end


