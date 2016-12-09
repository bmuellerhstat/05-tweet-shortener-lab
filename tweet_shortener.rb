# Write your code here.

def dictionary
    substitutes = {
   "hello" => 'hi',
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => '4',
   "four" => '4',
   'be' => 'b',
   'you' => 'u',
   "at" => "@", 
   "and" => "&",
}
end

def word_substituter(tweet)
    tweet_spliter = tweet.split(" ")
    tweet_spliter.each_with_index do |word, position|
      dictionary.each do |original_word, sub_word|
          if word.downcase == original_word
              tweet_spliter[position] = sub_word
          end
      end
  end
    #return tweet_one_short
    
    short_tweet = tweet_spliter.join(" ")
    short_tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |one_tweet| 
      puts word_substituter(one_tweet)
  end
end

def selective_tweet_shortener(tweet)
        if tweet.length > 140
       the_tweet =  word_substituter(tweet)
        else
       the_tweet = tweet
        end
       the_tweet 
end

def shortened_tweet_truncator(tweet)
    count_tweet = word_substituter(tweet)
    if count_tweet.length > 140
        new_tweet = count_tweet.slice(0..136).concat("...")
    else 
    new_tweet = count_tweet
    end
    new_tweet
end