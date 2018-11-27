# Write your code here.

def dictionary
    dictionary = {
        "hello"=>"hi",
        "to"=>"2",
        "too"=>"2",
        "two"=>"2",
        "for"=>"4",
        "For"=>"4",
        "four"=>"4",
        "be"=>"b",
        "you"=>"u",
        "at"=>"@",
        "and"=>"&"
        
    }    
end


def word_substituter(tweet)
    str = tweet.split(" ")
    dict = dictionary
    keys_only = dict.keys

     str.each  do |word|
    keys_only.each do |key|
    if word == key
     word.gsub!(key,dict[key])
    end
    end
    end
    return str.join(" ")
    
end

def bulk_tweet_shortener(tweet_arr)
 str_arr = tweet_arr
 str_arr1 = []
 str_arr.each do |str|
  str_arr1 << word_substituter(str)
 end
  str_arr1.each do |x|
      puts x
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  if shortened.length > 140
  return shortened[0..136] + "..."
  
  else
  return shortened
  end
  
end

 