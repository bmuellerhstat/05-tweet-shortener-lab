def dictionary
dictionary={
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
    }
end

def word_substituter(tweet)
tweet_array = tweet.split(" ")
subbed_tweet = []
tweet_array.collect do |word|                      
   if dictionary.keys.include?(word.downcase)
     subbed_tweet << (dictionary[word.downcase])
   else
     subbed_tweet << word
   end
end
 subbed_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
 array_of_tweets.each do |tweet|
   puts word_substituter(tweet)
  end
end
 
def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    word_substituter(tweet)
  end
end
 
def shortened_tweet_truncator(tweet)
tweet_to_cut = selective_tweet_shortener(tweet)
    if tweet_to_cut.length > 140
        tweet_to_cut[139] = "..."
        tweet_to_cut.slice(0..139)    
   else
       tweet_to_cut
    end
end