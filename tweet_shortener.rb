def dictionary
    {
        "hello" => 'hi',
        "to" => '2', 
        "two"=> '2',
        "too" => '2', 
        "for" => '4',
        "four"=>'4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@" ,
        "and" => "&",
    }
end 

def word_substituter(string)
    shorten_words=dictionary
    words_in_string= string.split(" ")
    words_in_string.collect do |word|
        if shorten_words.keys.include? word.downcase
          shorten_words.values_at(word.downcase)
        else
          word
        end 
    end.flatten.join(" ")
end 

def bulk_tweet_shortener(tweets)
  pro=".looc ton .ledba morf detaehc uoy"
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweets)
  if tweets.length>140
    word_substituter(tweets)
  else
    tweets
  end 
end 

def shortened_tweet_truncator(tweets)
  if tweets.length>140
    selective_tweet_shortener(tweets)[0..139]
  else
    tweets
  end 
end 
