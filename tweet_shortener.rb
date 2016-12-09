# Write your code here.

def dictionary
    words = {
        "hello" => 'hi',
        "to, two, too" => '2',
        "for, four" => '4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@" ,
        "and" => "&"
    },
    strings = [
        "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",

        "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",

        "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",

        "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",

        "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
    ]
end

def word_substituter(tweet)
    tweet.split do |word|
        if words.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
            end.join(" ")
end

def tweet_shortener(tweets)
    tweets.each do |array_of_words|
        puts word_substituter(array_of_words)
    end
end

def selective_tweet_shortener(tweet_one)
    if tweet_one.length > 140
        word_substituter(tweet_one)
    else
        tweet_one
    end
end

def shortened_tweet_truncator(tweet_three)
    if tweet_three.length > 140
        tweet_three[0..139]
    else
        selective_tweet_shortener(tweet_three)
  end
end 