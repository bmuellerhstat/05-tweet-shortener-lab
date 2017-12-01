# Write your code here.

def dictionary
    words = { 
        "hello" => "hi",
        "to" => 2, "two" => 2,"too" => 2,
        "be" => "b", 
        "you" => "u",
        "at" => "@",
        "and" => "&", 
        "four" => 4, "for" => 4
    }
end

def word_substituter(string_of_tweet)
    string_of_tweet.split(" ").collect do |word|
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


def selective_tweet_shortener(tweet)
    if tweet.length > 140 
        word_substituter(tweet)
    else
       tweet 
   end 
end 

def shortened_tweet_truncator(tweets)
    if tweets.length> 140
        selective_tweet_shortener(tweets)[0..139]
    else 
        tweets
    end
end 

