def dictionary
     words = {
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
 
def word_substituter(words)
    substitute = dictionary
    words.split.collect do |word|
       if substitute.keys.include?(word.downcase)
           word = substitute[word.downcase]
           else
            word
        end
    end.join(" ")
    end

def bulk_tweet_shortener(words)
     words.each do |word| 
        puts word_substituter(word)
    end
end

def selective_tweet_shortener(words)
    if words.length > 140
        word_substituter(words)
    else
        words
    end
end

def shortened_tweet_truncator(words)
    if word_substituter(words).length > 140
        word_substituter(words)[0..136] + '...'
    else
        words
    end
end 