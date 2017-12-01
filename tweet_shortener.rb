# Write your code here.
def dictionary
    substitues = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet_string)
    tweet_string.split.collect do |words|
        if dictionary.keys.include?(words.downcase) then words = dictionary[words.downcase] else words end
    end.join(" ")
end

def bulk_tweet_shortener(tweet_string)
    tweet_string.collect do |substitues|
        puts word_substituter(substitues)
    end
end

def selective_tweet_shortener(tweet_string)
    if tweet_string.length > 140 then word_substituter(tweet_string) else tweet_string end
end

def shortened_tweet_truncator(tweet_string)
    if tweet_string.length > 140 then selective_tweet_shortener(tweet_string)[0..136] + "..." else tweet_string end
end
