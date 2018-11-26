# Write your code here.
# "hello" becomes 'hi'
# "to, two, too" become '2' 
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@" 
# "and" becomes "&"

def dictionary
    
 {
 "hello" => 'hi',
 "to" => '2',
 "two" => '2',
 "too" => '2',
 "for" => '4',
 "four" => '4',
 'be' => 'b',
 'you' => 'u',
 "at" => "@",
 "and" => "&"
 }
end

def word_substituter(tweet_string)
   tweet_string.split.collect do |tweet|
       if dictionary.keys.include?(tweet.downcase)
           tweet = dictionary[tweet.downcase]
           
        else tweet
end
end.join(" ")
end

def bulk_tweet_shortener(tweet_array)
   tweet_array.each do |tweet| 
       puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
end 
end 

 def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
        word_substituter(tweet)[0..136] + "..."
    else
        tweet
end
end