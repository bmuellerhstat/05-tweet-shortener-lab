def dictionary 
    substitutes= {"hello" =>"hi",
                "to" => "2",
                "two" => "2", 
                "too" => "2", 
                "be" => "b",
                "you" => "u", 
                "at" => "@", 
                "and" => "&", 
                "for" => "4", 
                "four" => "4"
    }
end

def word_substituter(tweet_string)
    tweet_array = tweet_string.split(" ")
    tweet_array.collect do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
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
    selective_tweet_shortener(tweet)[0...140]
   else
     tweet
   end 
end 