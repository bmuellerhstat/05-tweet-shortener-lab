# Write your code here.
def dictionary
    words = {
        "hello" => 'hi',
        "to" => '2',
        'two' => '2',
        'too' => '2',
        'for' => '4',
        'four' => '4',
        'be' => 'b',
        'you' => 'u',
        'at' => '@',
        'and' => '&'
    }
end

def word_substituter(tweets)
    arr = tweets.split
    arr.map do |words|
        if dictionary.keys.include?(words.downcase)
            words = dictionary[words.downcase]
        else
            words
        end
    end.join(' ')
end

def bulk_tweet_shortener(tweets)
    tweets.map do |words|
        puts word_substituter(words)
    end
end

def selective_tweet_shortener(tweets)
    if tweets.length >= 140
        word_substituter(tweets)
    elsif tweets.length <= 140
        tweets
    end
end

def shortened_tweet_truncator(tweets)
    # return word_substituter(tweets).length
    if word_substituter(tweets).length >= 140
        word_substituter(tweets)[0..136] + "..."
    else
        tweets
    end
end