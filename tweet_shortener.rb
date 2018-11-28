# Write your code here.
def word_substituter(tweet)
    tweet.gsub! /\band\b/i, '&'
    tweet.gsub! /\bat\b/i, '@'
    tweet.gsub! /\btoo\b/i, '2'
    tweet.gsub! /\bfor\b/i, '4'
    tweet.gsub! /\byou\b/i, 'u'
    tweet.gsub! /\bbe\b/i, 'b'
    tweet.gsub! /\bto\b/i, '2'
    tweet
end

def bulk_tweet_shortener(tweets)
    for i in tweets do
        puts word_substituter(i)
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
    tweet = word_substituter(tweet)
    if tweet.length > 140
        num = tweet.length - 140
        num = num * -1
        tweet[0...num]
    else
        tweet
    end
end