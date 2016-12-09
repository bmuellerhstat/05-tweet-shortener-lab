ef dictionary
   hash = {
            "hello" => 'hi',
            "to" => '2',
            "two" => '2',
            "too" => '2',
            "for, four" => '4',
            'be' => 'b',
            'you' => 'u',
            "at" => "@" ,
            "and" => "&",
        }
end

def word_substituter(tweet, dictionary)
 
  # dictionary.each do |old_word, new_word|
  #   tweet.split(" ").each do |word|
  #     if word == old_word
  #     new_tweet = tweet.gsub(word, new_word)
  #     return new_tweet
  #     end
       
  #   end
  # end
  tweet.split(" ").collect do |word|
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
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
     tweet[0...140]
  else
     tweet
   end
end

# word_substituter( "Hello I am at the store and getting milk", dictionary)


  