# Write your code here.

tweets = [
"Hey guys, can anyone teach me how to be cool? 
I really want to be the best at everything,
you know what I mean? Tweeting is super fun you guys!!!!",
"OMG you guys, you won't believe how sweet my kitten is. 
My kitten is like super cuddly and too cute to be believed right?",
"I'm running out of example tweets for you guys, which is weird, 
because I'm a writer and this is just writing and I tweet all day. 
For real, you guys. For real.",
"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is 
SOOOO long it's gonna be way more than you would think twitter can handle, 
so shorten it up you know what I mean? I just can never tell how long to keep typing!",
"New game. Middle aged tweet followed by #youngPeopleHashTag Example: 
Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
]
    
substitutes = {
    "hello" => "hi",
    "too" => "2",
    "to" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}

def word_substituter(string, subs)
    subs.each do |word, substitute|
        strings[index].gsub!(/\bword\b/, substitute)
        # string.gsub!(word, substitute)
    end
end

def bulk_tweet_shortener(strings,subs)

    strings.each_with_index do |string,index|
        subs.each do |word, substitute|
            strings[index].gsub!(/\bword\b/, substitute)
            # strings[index].gsub!(word, substitute)
        end
    end

end

def selective_tweet_shortener(strings,subs)
    
    strings.each_with_index do |string,index|
        subs.each do |word, substitute|
            if string.length > 140
                strings[index].gsub!(/\bword\b/, substitute)
                # strings[index].gsub!(word, substitute)
            end
        end
    end
  
end

def shortened_tweet_truncator(strings,subs)
    
    strings.each_with_index do |string,index|
        subs.each do |word, substitute|
            if string.length > 140
                strings[index][0..139].gsub!(/\bword\b/, substitute)
                # strings[index].gsub!(word, substitute)
            end
        end
    end
  
end

# puts word_substituter("Hey guys, can anyone teach me how to be cool? 
# I really want to be the best at everything,
# you know what I mean? Tweeting is super fun you guys!!!!", substitutes)

# puts bulk_tweet_shortener(tweets, substitutes)

# puts selective_tweet_shortener(tweets, substitutes)

# puts shortened_tweet_truncator(tweets,substitutes)
