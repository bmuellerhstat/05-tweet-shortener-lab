#array = hash.keys 
def dictionary
    hash={
        "hello"=>"hi",
        "to"=>"2",
        "two"=>"2",
        "too"=>"2",
        "for" => '4',
        "four"=>"4",
        'be' => 'b',
        'you' => 'u',
        "at" => "@" ,
        "and" => "&",
    }
end

def word_substituter(tweets)
    array_words=tweets.split
    new_word=[]
    array_words.each do |word|
        if dictionary.keys.include?(word.downcase)
            new_word << dictionary[word.downcase]
        else
            new_word << word
        end
    end
    new_word.join(" ")
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
        tweet[0...140]
    else
        tweet
    end
end


