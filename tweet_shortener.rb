def dictionary
  {"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" =>'2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"}
end

def word_substituter(tweet)
arrwords = tweet.split(" ")
arrwords.map do |word|
if dictionary.keys.include?(word.downcase)
word = dictionary[word.downcase]#word is equal to the key of key-value pair
else
word = word
end
end.join(" ")#combines new array into one string
end

def bulk_tweet_shortener(arr_tweets=[])
arr_tweets.map do |tweet|
puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
   word_substituter(tweet)#if doesn't meet word count simplify tweet
   else
       tweet#if under word count just put in regular tweet
   end
end

def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length > 140
   shorter_version = word_substituter(tweet)
   shorter_version[0...137]+"..."#prints shortned tweet minus the last 3 lines which will be used as "..."
   else
      word_substituter(tweet)
   end
end