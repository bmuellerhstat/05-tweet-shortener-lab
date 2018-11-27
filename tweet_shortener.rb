# Write your code here.

def dictionary 
    { 
    "hello" => 'hi',
    "to"=>  '2',
    "two"=>  '2',
    "too" =>  '2',
    "for, four" =>  '4',
    'be'=> 'b',
    'you'=>  'u',
    "at" =>  "@",
    "and"=>  "&"
    }
end 

def word_substituter(long_tweet)
    long_words = long_tweet.split(" ")
    substitions = dictionary
    long_words.each |word|
    if word == substitions.keys
        long_tweet.sub! word, "substitions.value"
    end
    
end 

def bulk_tweet_shortener(tweet)
    puts word_substituter(tweet)
end

def selective_tweet_shortener(tweet)
    if tweet([a-z]).count > 140
        puts bulk_tweet_shortener(tweet)
    elsif tweet([a-z]).count < 130
        tweet
    else
        tweet
    end
end 


