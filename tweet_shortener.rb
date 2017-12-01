# Write your code here.
def dictionary
    subs = {
        "hello" => "hi",
        "to" => "2",
        "too" => "2",
        "two" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
  dictionary
  sub = tweet.split(" ")
  sub.each_with_index do |word, index|
    dictionary.each do |word2, subs|
        if word.downcase == word2
            sub[index] = subs
        end
    end
  end
  subbed = sub.join(" ")
end

def  bulk_tweet_shortener(tweets)
    tweets.map do |tweet|
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
    selective_tweet_shortener(tweet)
    if tweet.length > 140
        tweet = tweet[0..135]
        "#{tweet} ..."
    else 
        tweet
    end
end



