def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

# > a = ['12','34','35','231']
# > a.map { |i| "'" + i.to_s + "'" }.join(",")  OR
# >a.map do |i| "'" + i.to_s + "'" end.join(",") 
# => "'12','34','35','231'"
def word_substituter(tweet)
    tweet.split.map do |word|
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

# string = "Hi there, I am a string in this interesting and informative example"
# string[0]
# => "H"

# string[0..10]
# => "Hi there, I"
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end